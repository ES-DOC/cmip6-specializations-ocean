"""
.. module:: key_properties_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific key properties specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections

import details_validator
import enum_validator
from utils import set_default
from utils import validate_spec
from utils import validate_std



# CIM 2 type name.
_CIM_2_KEY_PROPERTIES = "cim.2.science.key_properties"


def validate(key, defn):
    """Validates a scientific grid specialization.

    :param str key: Key properties key.
    :param module defn: Key properties definition.

    """
    # Set defaults for optional fields.
    set_default(defn, 'DETAILS', collections.OrderedDict())
    set_default(defn, 'ENUMERATIONS', collections.OrderedDict())

    # Validate standard attributes.
    # Level-1 validation.
    errors = []
    errors += validate_std(defn, _CIM_2_KEY_PROPERTIES)
    errors += validate_spec(defn, "DETAILS", (dict, tuple))
    errors += validate_spec(defn, "ENUMERATIONS")

    # Escape if level-1 errors.
    if errors:
        return errors

    # Level-2 validation.
    for dt_key, dt_defn in defn.DETAILS.items():
        errors += details_validator.validate(dt_key, dt_defn)
    for e_key, e_defn in defn.ENUMERATIONS.items():
        errors += enum_validator.validate(e_key, e_defn)

    return errors