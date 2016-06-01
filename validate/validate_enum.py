"""
.. module:: enum_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 enumeration specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import validate_enum_member



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

    # Validate members.
    if "members" not in defn:
        errors.append("has no members")

    elif not isinstance(defn['members'], list):
        errors.append("members must be a list")

    elif not len(defn['members']):
        errors.append("members is an empty list")

    elif [m for m in defn['members'] if not isinstance(m, tuple) or len(m) != 2]:
        errors.append("members must defined as tuples: (name, description)")

    else:
        for m_defn in defn['members']:
        	errors += validate_enum_member.validate(m_defn)

    return ["enum {} :: {}".format(key, e) for e in errors]
