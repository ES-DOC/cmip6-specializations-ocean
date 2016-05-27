"""
.. module:: sub_process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific sub-process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
# Set of valid cardinalities.
_CARDINALITIES = {'0.1', '1.1', '0.N', '1.N'}

# Set of valid types.
_TYPES = {'bool', 'float', 'int', 'str'}


def _validate_property(defn):
    """Validates a detail property definition.

    :param str key: Sub-process detail key.
    :param module defn: Sub-process detail definition.

    """
    errors = []

    # Unpack definition.
    name, type_, cardinality, description = defn

    # Validate property name.
    if not isinstance(name, str):
        errors.append("name is invalid: [{}]".format(name))
    # TODO apply regex

    # Validate property type.
    if not isinstance(type_, str):
        errors.append("type is invalid: [{}]".format(type_))
    elif type_.startswith("ENUM:"):
        # TODO verify enums
        pass
    elif type_ not in _TYPES:
        errors.append("type is invalid [{}]".format(type_))

    # Validate property cardinality.
    if cardinality not in _CARDINALITIES:
        errors.append("cardinality is invalid: [{}]".format(cardinality))

    # Validate property description.
    if not isinstance(description, str):
        errors.append("description is invalid: [{}]".format(description))
    # TODO apply regex

    return ["property-{}".format(e) for e in errors]


def validate(key, defn):
    """Validates a scientific sub-process specialization.

    :param str key: Sub-process detail key.
    :param module defn: Sub-process detail definition.

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
        for defn in defn['properties']:
            errors += _validate_property(defn)

    return ["{}: sub-process-detail {}".format(key, e) for e in errors]
