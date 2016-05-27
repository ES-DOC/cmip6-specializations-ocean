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


def validate(key, defn):
    """Validates a scientific grid specialization.

    :param str key: Key properties key.
    :param module defn: Key properties definition.

    """
    errors = []

    # Validate standard attributes.
    errors += validate_std(defn, _CIM_2_KEY_PROPERTIES)

    return ["key-properties: {}".format(e) for e in errors]

