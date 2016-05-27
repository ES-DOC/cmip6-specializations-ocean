"""
.. module:: grid_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific grid specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections

import details_validator
import discretisation_validator
import discretisation_detail_validator
import enum_validator
from utils import validate_spec
from utils import validate_std
from utils import set_default



# CIM 2 type name.
_CIM_2_GRID = "cim.2.science.grid"


def _validate_discretisation(g_defn, d_key, d_defn):
    """Validates an associated discretisation.

    """
    errors = discretisation_validator.validate(d_key, d_defn)
    if not errors:
        for dd_key in [k for k in d_defn['details'] if not k in g_defn.DISCRETISATION_DETAILS]:
            err = "has an invalid detail key: {}".format(dd_key)
            errors.append(err)

    return ["DISCRETISATION['{}'] {}".format(d_key, e) for e in errors]


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
        errors += details_validator.validate(dt_key, dt_defn)
    for e_key, e_defn in defn.ENUMERATIONS.items():
        errors += enum_validator.validate(e_key, e_defn)
    for d_key, d_defn in defn.DISCRETISATION.items():
        errors += _validate_discretisation(defn, d_key, d_defn)
    for dd_key, dd_defn in defn.DISCRETISATION_DETAILS.items():
        errors += ["DISCRETISATION_DETAILS['{}'] :: {}".format(dd_key, e) for e in discretisation_detail_validator.validate(dd_key, dd_defn)]

    return errors
