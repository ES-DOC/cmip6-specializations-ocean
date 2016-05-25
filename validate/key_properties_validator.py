"""
.. module:: key_properties_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific key properties specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import validate_std


# CIM 2 type name.
_CIM_2_KEY_PROPERTIES = "cim.2.science.key_properties"


def _set_helper_fields(realm, key_properties):
    """Inject helper attributes used downstream.

    """
    key_properties.CIM_ID = "{}.{}".format(realm.CIM_ID, key_properties.__name__[len(realm.CIM_ID) + 1:])
    key_properties.CIM_TYPE = _CIM_2_KEY_PROPERTIES


def validate(realm, key_properties):
    """Validates a scientific key properties specialization.

    :param module realm: Realm specialization being validated.
    :param module key_properties: Key properties specialization being validated.

    """
    # Set helper fields.
    _set_helper_fields(realm, key_properties)

    # Validate standard attributes.
    validate_std(key_properties)
