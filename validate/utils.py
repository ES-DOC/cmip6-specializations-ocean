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
    """Validates a required field.

    """
    is_error = False
    if isinstance(target, dict):
        errors = target['ERRORS']
    else:
        errors = target.ERRORS

    if isinstance(target, dict):
        is_error = field not in target
    else:
        is_error = not hasattr(target, field)

    if is_error:
        err = "Missing field: {}".format(field)
        errors.append(err)


def is_expected(target, field, expected):
    """Validates an field with an expected value.

    """
    is_error = False
    if isinstance(target, dict):
        errors = target['ERRORS']
    else:
        errors = target.ERRORS

    if isinstance(target, dict):
        if field in target:
            is_error = target[field] != expected
    else:
        if hasattr(target, field):
            is_error = getattr(target, field) != expected

    if is_error:
        err = "Invalid field value: {}.  Expected value={}".format(field, expected)
        errors.append(err)


def is_type(target, field, expected):
    """Validates a required field.

    """
    is_error = False
    if isinstance(target, dict):
        errors = target['ERRORS']
    else:
        errors = target.ERRORS

    if isinstance(target, dict):
        if field in target:
            is_error = not isinstance(target[field], expected)
    else:
        if hasattr(target, field):
            is_error = not isinstance(getattr(target, field), expected)

    if is_error:
        err = "Invalid field type: {}.  Expected type={}".format(field, expected)
        errors.append(err)


def is_collection(target, field, expected):
    """Validates a field is a collection with all its members of a certain type.

    """
    is_error = False
    if isinstance(target, dict):
        errors = target['ERRORS']
    else:
        errors = target.ERRORS

    collection = None
    if isinstance(target, dict):
        if field in target:
            collection = target[field]
    else:
        if hasattr(target, field):
            collection = getattr(target, field)

    if collection:
        try:
            iter(collection)
        except TypeError:
            pass
        else:
            for i in collection:
                if not isinstance(i, expected):
                    is_error = True
                    break

    if is_error:
        err = "Invalid collection: {}.  All items must be of type={}".format(field, expected)
        errors.append(err)


def is_in(target, field, collection):
    """Validates a field is within a collection.

    """
    try:
        item = getattr(target, field)
    except AttributeError:
        return
    else:
        if item not in collection:
            err = "Invalid field: {}.  Not a member of {}".format(field, list(collection))
            target.ERRORS.append(err)


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

