"""
.. module:: utils.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: CMIP6 specialization validation utility functions.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections
import imp
import os

import constants



def get_cim_id(module):
    """Reurns the expected cim id of a module.

    """
    parts = [module.__name__.split("_")[0], "_".join(module.__name__.split("_")[1:])]
    parts = [i for i in parts if i]

    return "cmip6.{}".format(".".join(parts))


def validate_std(module, cim_type):
    """Validates a modules standard attributes.

    """
    errors = []

    # Validate AUTHORS.
    if not hasattr(module, 'AUTHORS'):
        errors.append("AUTHORS property is missing")
    elif not isinstance(module.AUTHORS, str):
        errors.append("AUTHORS property must be a string")

    # Validate AUTHORS.
    if not hasattr(module, 'CONTACT'):
        errors.append("CONTACT property is missing")
    elif not isinstance(module.CONTACT, str):
        errors.append("CONTACT property must be a string")

    # Validate DESCRIPTION.
    if not hasattr(module, 'DESCRIPTION'):
        errors.append("DESCRIPTION property is missing")
    elif not isinstance(module.DESCRIPTION, str):
        errors.append("DESCRIPTION property must be a string")

    # Validate ID.
    if not hasattr(module, 'ID'):
        errors.append("ID property is missing")
    elif not isinstance(module.ID, str):
        errors.append("ID property must be a string")
    elif not module.ID == get_cim_id(module):
        errors.append("ID must be = {}".format(get_cim_id(module)))

    # Validate _TYPE.
    if not hasattr(module, '_TYPE'):
        errors.append("_TYPE property is missing")
    elif module._TYPE != cim_type:
        errors.append("_TYPE must be = {}".format(cim_type))

    # Validate QC_STATUS.
    if not hasattr(module, 'QC_STATUS'):
        errors.append("QC_STATUS property is missing")
    elif module.QC_STATUS not in constants.QC_STATES:
        errors.append("QC_STATUS is invalid. Valid set = {}".format(list(constants.QC_STATES)))

    return errors


def validate_spec(target, attr, types=(dict, )):
    errors = []

    if not hasattr(target, attr):
        errors.append("{} is missing".format(attr))
    elif not isinstance(getattr(target, attr), collections.OrderedDict):
        errors.append("{} must be an OrderedDict".format(attr))
    else:
        for key, defn in getattr(target, attr).items():
            if not isinstance(defn, types):

                err = "{}[{}]: must be a {}".format(attr, key, " or ".join([i.__name__ for i in types]))
                errors.append(err)

    return errors


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

    return realm, grid, key_properties, processes


def get_specialization(input_dir, key):
    """Returns specialization modules organized by type.

    """
    raise NotImplementedError()


def set_default(target, attr, value):
    """Sets a default value upon an object.

    """
    try:
        getattr(target, attr)
    except AttributeError:
        setattr(target, attr, value)
