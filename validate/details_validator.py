"""
.. module:: process_details_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 process details specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import property_validator



def _validate_inline(name, defn):
    """Validates an in-line property specialization.

    """
    type_, cardinality, description = defn
    errors = property_validator.validate((name, type_, cardinality, description))

    return ["DETAILS[{}] :: {}".format(name, e) for e in errors]


def _validate_group(key, defn):
    """Validates an property group specialization.

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
        errors.append("properties must defined as a list")
    elif [p for p in defn['properties'] if not isinstance(p, tuple) or len(p) != 4]:
        errors.append("all properties must be 4 member tuples")
    else:
        for defn in defn['properties']:
            errors += property_validator.validate(defn)

    return ["DETAILS['{}']: {}".format(key, e) for e in errors]


def validate(key, defn):
    """Validates a scientific sub-process specialization.

    :param str key: Sub-process detail key.
    :param module defn: Sub-process detail definition.

    """
    func = _validate_inline if isinstance(defn, tuple) else _validate_group

    return func(key, defn)