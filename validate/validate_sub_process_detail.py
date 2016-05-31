"""
.. module:: sub_process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific sub-process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import validate_property



def validate(key, defn, enums):
    """Validates a scientific sub-process specialization.

    :param str key: Sub-process detail key.
    :param module defn: Sub-process detail definition.
    :param list enums: Set of allowed enumerations.

    """
    errors = []

    # Validate description.
    if "description" not in defn:
        errors.append("has no description")
    elif not isinstance(defn['description'], str):
        errors.append("description must be a string")

    # Validate properties.
    if "properties" not in defn:
        errors.append("has no properties")
    elif not isinstance(defn['properties'], list):
        errors.append("properties must be a list")
    elif [p for p in defn['properties'] if not isinstance(p, tuple) or len(p) != 4]:
        errors.append("properties must be 4 member tuples")
    else:
        for defn_ in defn['properties']:
            errors += validate_property.validate(defn_, enums)

    return errors
