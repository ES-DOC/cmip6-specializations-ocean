"""
.. module:: utils.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: CMIP6 specialization validation utility functions.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import imp
import os



# Set of valid QC states.
_QC_STATES = {
    'draft',
    'complete'
    }


def is_required(target, field):
    try:
        getattr(target, field)
    except AttributeError:
        err = "Missing field: {}".format(field)
        target.ERRORS.append(err)
    else:
        return True


def is_expected(target, field, expected):
    try:
        actual = getattr(target, field)
    except AttributeError:
        return
    else:
        if actual != expected:
            err = "Invalid field: {}.  Actual value={}.  Expected value={}".format(field, actual, expected)
            target.ERRORS.append(err)


def is_in(target, field, collection):
    try:
        item = getattr(target, field)
    except AttributeError:
        return
    else:
        if item not in collection:
            err = "Invalid field: {}.  Not a member of {}".format(field, list(collection))
            target.ERRORS.append(err)


def is_type(target, field, expected):
    try:
        actual = getattr(target, field)
    except AttributeError:
        return
    else:
        actual = type(actual)
        if actual != expected:
            err = "Invalid field type: {}.  Actual type={}.  Expected type={}".format(field, actual, expected)
            target.ERRORS.append(err)


def is_collection(target, field, expected):
    try:
        iter(getattr(target, field))
    except (AttributeError, TypeError):
        return
    else:
        for i in iter(getattr(target, field)):
            if not isinstance(i, expected):
                err = "Invalid collection: {}.  All items must be of type={}".format(field, expected)
                target.ERRORS.append(err)


def validate_key(
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


def validate_attr(
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


def validate_std(module):
    """Validates a modules standard attributes.

    """
    # Validate AUTHORS.
    is_required(module, "AUTHORS")
    is_type(module, "AUTHORS", str)

    # Validate AUTHORS.
    is_required(module, "CONTACT")
    is_type(module, "CONTACT", str)

    # Validate ID.
    is_required(module, "ID")
    is_expected(module, "ID", "cmip6.{}".format(module.CIM_ID))

    # Validate _TYPE.
    is_required(module, "_TYPE")
    is_expected(module, "_TYPE", module.CIM_TYPE)

    # Validate _TYPE.
    is_required(module, "QC_STATUS")
    is_in(module, "QC_STATUS", _QC_STATES)


def get_specializations(input_dir):
    """Returns specialization modules organized by type.

    """
    # Load specialization modules.
    modules = sorted([i for i in os.listdir(input_dir)
                     if not i.startswith('_') and i.endswith('.py')])
    modules = [os.path.join(input_dir, m) for m in modules]
    modules = [(m.split("/")[-1].split(".")[0], m) for m in modules]
    modules = [imp.load_source(name, fpath) for name, fpath in modules]

    # Organize specialization modules.
    realm = grid = key_properties = None
    processes = []
    for module in modules:
        if realm is None:
            realm = module
        elif module.__name__.endswith('_grid'):
            grid = module
        elif module.__name__.endswith('_key_properties'):
            key_properties = module
        else:
            processes.append(module)

    return modules, realm, grid, key_properties, processes

