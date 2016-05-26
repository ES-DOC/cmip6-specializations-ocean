"""
.. module:: sub_process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific sub-process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import is_required
from utils import is_type
from utils import is_collection
from utils_mapping import map_defn
from utils_mapping import map_property



# Set of valid cardinalities.
_CARDINALITIES = {'0.1', '1.1', '0.N', '1.N'}

# Set of valid types.
_TYPES = {'bool', 'float', 'int', 'str'}


def _validate_property(errors, defn):
    """Validates a detail property definition.

    """
    # Validate property is a 4 member tuple.
    if len(defn) != 4:
        errors.append("detail property not a 4 member tuple")
        return

    # Map definition.
    p = map_property(defn)

    # Validate property name.
    if not isinstance(p.name, str):
        errors.append("detail property name is invalid {}".format(p.name))
    else:
        # Apply regex
        pass

    # Validate property type.
    if not isinstance(p.type, str):
        errors.append("detail property type is invalid {}".format(p.type))
    elif p.type.startswith("ENUM"):
        pass
    elif p.type not in _TYPES:
        errors.append("detail property [{}] contains an invalid type".format(p.type))

    # Validate property cardinality.
    if p.cardinality not in _CARDINALITIES:
        errors.append("detail property [{}] contains an invalid cardinality".format(p.cardinality))

    # Validate property description.
    if not isinstance(p.description, str):
        errors.append("detail property description is invalid {}".format(p.description))


def validate(process, defn, key):
    """Validates a scientific sub-process specialization.

    :param module realm: Realm specialization being validated.
    :param module process: Process specialization being validated.
    :param dict sub_process: Sub-process specialization being validated.
    :param str sub_process_key: Unique key associated with sub-process.

    """
    details = map_defn(defn, key)

    # Validate description.
    is_required(details, "description")
    is_type(details, "description", str)

    # Validate properties.
    if is_required(details, "properties") and \
       is_type(details, "properties", list) and \
       is_collection(details, "properties", tuple):
        for defn in details.properties:
            _validate_property(details.ERRORS, defn)


    # Append errors to process error collection.
    process.ERRORS += ["Invalid sub-process={} :: {}".format(key, e)
                       for e in details.ERRORS]


