"""
.. module:: sub_process_detail_property_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific sub-process detail property specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import constants



def validate(defn):
    """Validates a detail property definition.

    :param str key: Sub-process detail key.
    :param module defn: Sub-process detail definition.

    """
    errors = []

    # Unpack definition.
    name, type_, cardinality, description = defn

    # Validate property name.
    if not isinstance(name, str):
        errors.append("name is invalid :: [{}]".format(name))
    # TODO apply regex

    # Validate property type.
    if not isinstance(type_, str):
        errors.append("type is invalid :: [{}]".format(type_))
    elif type_.startswith("ENUM:"):
        # TODO verify enums
        pass
    elif type_ not in constants.TYPES:
        errors.append("type is invalid :: [{}]".format(type_))

    # Validate property cardinality.
    if cardinality not in constants.CARDINALITIES:
        errors.append("cardinality is invalid :: [{}]".format(cardinality))

    # Validate property description.
    if not isinstance(description, str):
        errors.append("description is invalid :: [{}]".format(description))
    # TODO apply regex

    return ["property-{}".format(e) for e in errors]