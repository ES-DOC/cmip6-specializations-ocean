"""
.. module:: process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections

import details_validator
import enum_validator
import sub_process_validator
import sub_process_detail_validator
from utils import set_default
from utils import validate_spec
from utils import validate_std



# CIM 2 type name.
_CIM_2_PROCESS = "cim.2.science.process"


def _validate_sub_process(p_defn, sp_key, sp_defn):
    """Validates an associated sub-prcess.

    """
    errors = sub_process_validator.validate(sp_key, sp_defn)
    if not errors:
        for spd_key in [k for k in sp_defn['details'] if not k in p_defn.SUB_PROCESS_DETAILS]:
            err = "has an invalid detail key: {}".format(spd_key)
            errors.append(err)

    return ["SUB_PROCESSES['{}'] {}".format(sp_key, e) for e in errors]


def validate(key, defn):
    """Validates a scientific process specialization.

    :param str key: Process key.
    :param module defn: Process definition.

    """
    # Set defaults for optional fields.
    set_default(defn, 'DETAILS', collections.OrderedDict())
    set_default(defn, 'ENUMERATIONS', collections.OrderedDict())
    set_default(defn, 'SUB_PROCESSES', collections.OrderedDict())
    set_default(defn, 'SUB_PROCESS_DETAILS', collections.OrderedDict())

    # Level-1 validation.
    errors = []
    errors += validate_std(defn, _CIM_2_PROCESS)
    errors += validate_spec(defn, "DETAILS", (dict, tuple))
    errors += validate_spec(defn, "ENUMERATIONS")
    errors += validate_spec(defn, "SUB_PROCESSES")
    errors += validate_spec(defn, "SUB_PROCESS_DETAILS")

    # Escape if level-1 errors.
    if errors:
        return errors

    # Level-2 validation.
    for pd_key, pd_defn in defn.DETAILS.items():
        errors += details_validator.validate(pd_key, pd_defn)
    for e_key, e_defn in defn.ENUMERATIONS.items():
        errors += enum_validator.validate(e_key, e_defn)
    for sp_key, sp_defn in defn.SUB_PROCESSES.items():
        errors += _validate_sub_process(defn, sp_key, sp_defn)
    for spd_key, spd_defn in defn.SUB_PROCESS_DETAILS.items():
        errors += ["SUB_PROCESS_DETAILS['{}'] :: {}".format(spd_key, e) for e in sub_process_detail_validator.validate(spd_key, spd_defn)]

    return errors
