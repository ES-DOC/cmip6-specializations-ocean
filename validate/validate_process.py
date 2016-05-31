"""
.. module:: process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections

import validate_details
import validate_enum
import validate_sub_process
import validate_sub_process_detail
from utils import set_default
from utils import validate_spec
from utils import validate_std



# CIM 2 type name.
_CIM_2_PROCESS = "cim.2.science.process"

# Set of fields.
_FIELDS = {
    'DETAILS',
    'ENUMERATIONS',
    'SUB_PROCESSES',
    'SUB_PROCESS_DETAILS'
    }

# Map of fields to acceptable file value types.
_FIELD_TYPE_MAP = {
    'DETAILS': (dict, tuple)
}


def _validate_sub_process(defn, sp_key, sp_defn):
    """Validates an associated sub-prcess.

    """
    errors = validate_sub_process.validate(sp_key, sp_defn)
    if not errors:
        for spd_key in [k for k in sp_defn['details'] if not k in defn.SUB_PROCESS_DETAILS]:
            err = "has an invalid detail key: {}".format(spd_key)
            errors.append(err)

    return ["SUB_PROCESSES['{}'] {}".format(sp_key, e) for e in errors]


def validate(key, defn):
    """Validates a scientific process specialization.

    :param str key: Process key.
    :param module defn: Process definition.

    """
    # Set defaults for optional fields.
    for field in _FIELDS:
        set_default(defn, field, collections.OrderedDict())

    # Level-1 validation.
    errors = []
    errors += validate_std(defn, _CIM_2_PROCESS)
    for field in _FIELDS:
        try:
            errors += validate_spec(defn, field, _FIELD_TYPE_MAP[field])
        except KeyError:
            errors += validate_spec(defn, field)

    # Escape if level-1 errors.
    if errors:
        return errors

    # Level-2 validation.
    for key_, defn_ in defn.DETAILS.items():
        errors += validate_details.validate(key_, defn_, defn.ENUMERATIONS)
    for key_, defn_ in defn.ENUMERATIONS.items():
        errors += validate_enum.validate(key_, defn_)
    for key_, defn_ in defn.SUB_PROCESSES.items():
        errors += _validate_sub_process(defn, key_, defn_)
    for key_, defn_ in defn.SUB_PROCESS_DETAILS.items():
        errors += ["SUB_PROCESS_DETAILS['{}'] :: {}".format(key_, e) for e in validate_sub_process_detail.validate(key_, defn_, defn.ENUMERATIONS)]

    return errors
