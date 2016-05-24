"""
.. module:: validator_.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 realm specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import argparse
import datetime
import imp
import operator
import os



# Define command line options.
_ARGS = argparse.ArgumentParser("Validates a set of CMIP6 specializations.")
_ARGS.add_argument(
    "--realm",
    help="Name of realm being validated.",
    dest="realm",
    type=str,
    default=os.path.dirname(os.path.realpath(__file__)).split("-")[-1]
    )
_ARGS.add_argument(
    "--input",
    help="Path to a directory in which specializations reside.",
    dest="input",
    type=str,
    default=os.path.dirname(os.path.realpath(__file__))
    )
_ARGS.add_argument(
    "--output",
    help="Validation report filepath.",
    dest="output",
    type=str,
    default=__file__.replace(".py", ".report")
    )


# Set of valid QC states.
_QC_STATES = {
    'draft',
    'complete'
    }

# CIM 2 type names.
_CIM_2_GRID = "cim.2.science.grid"
_CIM_2_KEY_PROPERTIES = "cim.2.science.key_properties"
_CIM_2_REALM = "cim.2.science.scientific_realm"
_CIM_2_PROCESS = "cim.2.science.process"

# Report section break.
_REPORT_BREAK = "------------------------------------------------------------------------"


def _validate_key(
    obj,
    attr,
    expected_type=str,
    expected_val=None,
    whitelist=None
    ):
    """Validates a dictionary attribute.

    """
    errors = obj['ERRORS']

    if attr not in obj:
        err = "Missing key: {}".format(attr)
        errors.append(err)
        return

    attr_val = obj[attr]
    if type(attr_val) != expected_type:
        err = "Invalid value type: {} :: {} is invalid, must be {}".format(attr, type(attr_val), expected_type)
        errors.append(err)
        return

    if expected_val and attr_val != expected_val:
        err = "{} is invalid.  Actual={}.  Expected={}".format(attr, attr_val, expected_val)
        errors.append(err)
        return

    if whitelist and attr_val not in whitelist:
        err = "{} is invalid.  Expected value must be one of: {}".format(attr, list(whitelist))
        errors.append(err)
        return


def _validate_attr(
    module,
    attr,
    expected_type=str,
    expected_val=None,
    whitelist=None
    ):
    """Validates a module attribute.

    """
    errors = module.ERRORS

    try:
        getattr(module, attr)
    except AttributeError:
        err = "Missing attribute: {}".format(attr)
        errors.append(err)
        return

    attr_val = getattr(module, attr)
    if type(attr_val) != expected_type:
        err = "Invalid value type: {} :: {} is invalid, must be {}".format(attr, type(attr_val), expected_type)
        errors.append(err)
        return

    if expected_val and attr_val != expected_val:
        err = "{} is invalid.  Actual={}.  Expected={}".format(attr, attr_val, expected_val)
        errors.append(err)
        return

    if whitelist and attr_val not in whitelist:
        err = "{} is invalid.  Expected value must be one of: {}".format(attr, list(whitelist))
        errors.append(err)
        return


def _validate_std(module):
    """Validates a modules standard attributes.

    """
    _validate_attr(module, "AUTHORS")
    _validate_attr(module, "CONTACT")
    _validate_attr(module, "ID", expected_val="cmip6.{}".format(module.CIM_ID))
    _validate_attr(module, "_TYPE", expected_val=module.CIM_TYPE)
    _validate_attr(module, "QC_STATUS", whitelist=_QC_STATES)


def _set_sub_processes(process):
    """Injects a sub-processes helper attribute.

    """
    process._SUB_PROCESSES = []
    try:
        process.SUB_PROCESSES
    except AttributeError:
        pass
    else:
        for key, defn in process.SUB_PROCESSES.items():
            defn['key'] = key
            defn['ERRORS'] = []
            process._SUB_PROCESSES.append(defn)


def _validate_realm(realm, processes):
    """Validates a scientific realm specialization.

    """
    # Set helper attributes.
    realm.CIM_ID = realm.__name__
    realm.CIM_TYPE = _CIM_2_REALM
    realm.PROCESS_KEYS = [p.__name__ for p in processes]

    # Validate standard attributes.
    _validate_std(realm)

    # Validate custom attributes.
    _validate_attr(realm, "REALM", expected_val=realm.__name__)
    _validate_attr(realm, "GRID", expected_val="{}_grid".format(realm.__name__))
    _validate_attr(realm, "KEY_PROPERTIES", expected_val="{}_key_properties".format(realm.__name__))
    _validate_attr(realm, "PROCESSES", expected_type=list)

    # Validate process keys.
    for key in realm.PROCESSES:
        if key not in realm.PROCESS_KEYS:
            err = "Invalid process key: {}".format(key)
            realm.ERRORS.append(err)


def _validate_realm_grid(realm, grid):
    """Validates a scientific realm grid specialization.

    """
    # Set helper attributes.
    grid.CIM_ID = "{}.{}".format(realm.CIM_ID, grid.__name__[len(realm.CIM_ID) + 1:])
    grid.CIM_TYPE = _CIM_2_GRID

    # Validate standard attributes.
    _validate_std(grid)


def _validate_realm_key_properties(realm, key_properties):
    """Validates a scientific realm key properties specialization.

    """
    # Set helper attributes.
    key_properties.CIM_ID = "{}.{}".format(realm.CIM_ID, key_properties.__name__[len(realm.CIM_ID) + 1:])
    key_properties.CIM_TYPE = _CIM_2_KEY_PROPERTIES

    # Validate standard attributes.
    _validate_std(key_properties)


def _validate_process(realm, process):
    """Validates a scientific process specialization.

    """
    # Set helper attributes.
    process.CIM_ID = "{}.{}".format(realm.CIM_ID, process.__name__[len(realm.CIM_ID) + 1:])
    process.CIM_TYPE = _CIM_2_PROCESS
    _set_sub_processes(process)

    # Validate standard attributes.
    _validate_std(process)

    # Validate custom attributes.
    for sub_process in process._SUB_PROCESSES:
        _validate_sub_process(realm, process, sub_process)


def _validate_sub_process(realm, process, sub_process):
    """Validates a scientific sub-process specialization.

    """
    _validate_key(sub_process, "description")
    _validate_key(sub_process, "details", expected_type=list)
    for key in sub_process['details']:
        if key not in process.SUB_PROCESS_DETAILS:
            err = "Invalid sub-process detail key: {}".format(key)
            sub_process['ERRORS'].append(err)

    process.ERRORS += ["Sub-process: {} :: {}".format(sub_process['key'], e) for e in sub_process['ERRORS']]


def _get_specializations(input_dir):
    """Returns specialization modules organized by type.

    """
    # Load specialization modules.
    modules = sorted([i for i in os.listdir(input_dir) if not i.startswith('_') and i.endswith('.py')])
    modules = [os.path.join(input_dir, m) for m in modules]
    modules = [(m.split("/")[-1].split(".")[0], m) for m in modules]
    modules = [imp.load_source(name, fpath) for name, fpath in modules]

    # Organize specialization modules.
    realm = grid = key_properties = None
    processes = []
    for module in modules:
        module.ERRORS = []
        if realm is None:
            realm = module
        elif module.__name__.endswith('_grid'):
            grid = module
        elif module.__name__.endswith('_key_properties'):
            key_properties = module
        else:
            processes.append(module)

    return modules, realm, grid, key_properties, processes


def _get_report(realm, modules):
    """Returns a validation report.

    """
    # Return null report if no errors.
    if not modules:
        return []

    # Set errors.
    errors = reduce(operator.add, [m.ERRORS for m in modules])

    # Set header.
    report = []
    report.append(_REPORT_BREAK)
    report.append("CMIP6 SPECIALIZATIONS VALIDATION REPORT")
    report.append(_REPORT_BREAK)
    report.append("Realm = {}".format(realm))
    report.append("Generated @ {}".format(datetime.datetime.now()))
    report.append("Error count = {}".format(len(errors)))
    report.append(_REPORT_BREAK)

    # Set errors.
    for module in modules:
        report.append("{}.py".format(module.__name__))
        for idx, err in enumerate(module.ERRORS):
            report.append("#{}\t{}.".format(idx + 1, err))
        report.append("")

    return report


def _write_report(args, report):
    """Writes validation report to local file system.

    """
    # Delete existing report.
    try:
        os.remove(args.output)
    except OSError:
        pass

    if not report:
        # Write success to stdout.
        print _REPORT_BREAK
        print "The CMIP6 {} specializations are currently valid. Congratulations!".format(args.realm)
        print _REPORT_BREAK

    else:
        # Write failure to file system.
        with open(args.output, 'w') as fstream:
            for l in report:
                fstream.write("{}\n".format(l))

        # Write failure to stdout.
        for l in report:
            print l


def _main(args):
    """Main entry point.

    """
    # Set specialization modules.
    modules, realm, grid, key_properties, processes = _get_specializations(args.input)

    # Validate.
    _validate_realm(realm, processes)
    if grid:
        _validate_realm_grid(realm, grid)
    if key_properties:
        _validate_realm_key_properties(realm, key_properties)
    for process in processes:
        _validate_process(realm, process)

    # Set modules in error.
    modules = [m for m in modules if m.ERRORS]

    # Write report.
    _write_report(args, _get_report(args.realm, modules))


# Entry point.
if __name__ == '__main__':
    _main(_ARGS.parse_args())
