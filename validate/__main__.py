"""
.. module:: __main__.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: CMIP6 specialization validator.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import argparse
import collections
import datetime
import operator
import os

import grid_validator
import key_properties_validator
import process_validator
import realm_validator
import utils


# Define command line options.
_ARGS = argparse.ArgumentParser("Validates a set of CMIP6 specializations.")
_ARGS.add_argument(
    "--realm",
    help="Name of realm being validated.",
    dest="realm",
    type=str,
    default=os.path.dirname(os.path.dirname(__file__)).split("-")[-1]
    )
_ARGS.add_argument(
    "--input",
    help="Path to a directory in which specializations reside.",
    dest="input_dir",
    type=str,
    default=os.path.dirname(os.path.dirname(__file__))
    )
_ARGS = _ARGS.parse_args()

# Report section break.
_REPORT_BREAK = "------------------------------------------------------------------------"


def _validate():
    """Validates the specialization set.

    """
    # Set specialization modules.
    realm, grid, key_properties, processes = utils.get_specializations(_ARGS.input_dir)

    # Initialise errors.
    errors = collections.defaultdict(list)

    # Validate realm.
    key, defn = realm.__name__, realm
    errors[defn] += realm_validator.validate(key, defn, processes)

    # Validate grid.
    if grid:
        key, defn = grid.__name__, grid
        errors[grid] += grid_validator.validate(key, defn)

    # Validate key properties.
    if key_properties:
        key, defn = key_properties.__name__, key_properties
        errors[key_properties] += key_properties_validator.validate(key, defn)

    # Validate processes.
    for key, defn in [(p.__name__, p) for p in processes]:
        errors[defn] += process_validator.validate(key, defn)

    return {k: v for k, v in errors.items() if v}


# Set errors.
in_error = _validate()
error_count = 0 if not in_error else len(reduce(operator.add, in_error.values()))

# Set report.
report = []
if not in_error:
    report.append(_REPORT_BREAK)
    report.append("The CMIP6 {} specializations are currently valid. Congratulations!".format(_ARGS.realm))
    report.append(_REPORT_BREAK)
else:
    report.append(_REPORT_BREAK)
    report.append("CMIP6 SPECIALIZATIONS VALIDATION REPORT")
    report.append(_REPORT_BREAK)
    report.append("Realm = {}".format(_ARGS.realm))
    report.append("Generated @ {}".format(datetime.datetime.now()))
    report.append("Error count = {}".format(error_count))
    report.append(_REPORT_BREAK)

    # Set report errors.
    for module, errors in in_error.items():
        report.append("{}.py".format(module.__name__))
        for idx, err in enumerate(errors):
            report.append("Error #{}:\t{}.".format(idx + 1, err))
        report.append("")

# Write to stdout.
for l in report:
    print l
