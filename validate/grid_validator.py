"""
.. module:: grid_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific grid specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections

import details_validator
import enum_validator
from details_container_validator import validate as validate_details_container
from utils import validate_spec
from utils import validate_std
from utils import set_default



# CIM 2 type name.
_CIM_2_GRID = "cim.2.science.grid"


def _validate_discretisation(g_defn, key, defn):
    """Validates an associated discretisation.

    """
    errors = validate_details_container(key, defn, g_defn.DISCRETISATION_DETAILS)

    return ["DISCRETISATION['{}'] {}".format(key, e) for e in errors]


def _validate(kp_defn, typeof, key, defn):
    """Validates an associated resolution.

    """
    details = getattr(kp_defn, "{}_DETAILS".format(typeof))
    errors = validate_details_container(key, defn, details)

    return ["{}['{}'] {}".format(typeof, key, e) for e in errors]


def validate(key, defn):
    """Validates a scientific grid specialization.

    :param str key: Grid key.
    :param module defn: Grid definition.

    """
    # Set defaults for optional fields.
    set_default(defn, 'ENUMERATIONS', collections.OrderedDict())
    set_default(defn, 'DETAILS', collections.OrderedDict())
    set_default(defn, 'DISCRETISATION', collections.OrderedDict())
    set_default(defn, 'DISCRETISATION_DETAILS', collections.OrderedDict())

    # Level-1 validation.
    errors = []
    errors += validate_std(defn, _CIM_2_GRID)
    errors += validate_spec(defn, "ENUMERATIONS")
    errors += validate_spec(defn, "DETAILS", (dict, tuple))
    errors += validate_spec(defn, "DISCRETISATION")
    errors += validate_spec(defn, "DISCRETISATION_DETAILS")

    # Escape if level-1 errors.
    if errors:
        return errors

    # Level-2 validation.
    for dt_key, dt_defn in defn.DETAILS.items():
        errors += details_validator.validate(dt_key, dt_defn, defn.ENUMERATIONS)
    for e_key, e_defn in defn.ENUMERATIONS.items():
        errors += enum_validator.validate(e_key, e_defn)
    for d_key, d_defn in defn.DISCRETISATION.items():
        errors += _validate_discretisation(defn, d_key, d_defn)
    for key_, defn_ in defn.DISCRETISATION.items():
        errors += _validate(defn, "DISCRETISATION", key_, defn_)

    return errors
