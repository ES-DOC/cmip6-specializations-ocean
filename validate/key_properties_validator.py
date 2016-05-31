"""
.. module:: key_properties_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific key properties specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections

from details_container_validator import validate as validate_details_container
from details_validator import validate as validate_details
from enum_validator import validate as validate_enum
from utils import set_default
from utils import validate_spec
from utils import validate_std



# CIM 2 type name.
_CIM_2_KEY_PROPERTIES = "cim.2.science.key_properties"

# Set of fields.
_FIELDS = {
    'DETAILS',
    'ENUMERATIONS',
    'EXTENT',
    'EXTENT_DETAILS',
    'EXTRA_CONSERVATION_PROPERTIES',
    'EXTRA_CONSERVATION_PROPERTIES_DETAILS',
    'RESOLUTION',
    'RESOLUTION_DETAILS',
    'TUNING_APPLIED',
    'TUNING_APPLIED_DETAILS',
    }


def _validate(kp_defn, typeof, key, defn):
    """Validates an associated resolution.

    """
    errors = validate_details_container(key, defn, getattr(kp_defn, "{}_DETAILS".format(typeof)))

    return ["{}['{}'] {}".format(typeof, key, e) for e in errors]


def validate(key, defn):
    """Validates a scientific grid specialization.

    :param str key: Key properties key.
    :param module defn: Key properties definition.

    """
    # Set defaults for optional fields.
    for field in _FIELDS:
        set_default(defn, field, collections.OrderedDict())

    # Level-1 validation.
    errors = []
    errors += validate_std(defn, _CIM_2_KEY_PROPERTIES)
    for field in _FIELDS:
        if field.endswith("DETAILS"):
            errors += validate_spec(defn, field, (dict, tuple))
        else:
            errors += validate_spec(defn, field)

    # Escape if level-1 errors.
    if errors:
        return errors

    # Level-2 validation.
    for k, d in defn.DETAILS.items():
        errors += validate_details(k, d)
    for k, d in defn.ENUMERATIONS.items():
        errors += validate_enum(k, d)
    for field in {
        'EXTENT',
        'EXTRA_CONSERVATION_PROPERTIES',
        'RESOLUTION',
        'TUNING_APPLIED'
        }:
        for k, d in getattr(defn, field).items():
            errors += _validate(defn, field, k, d)

    return errors
