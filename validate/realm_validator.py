"""
.. module:: realm_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific realm specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import validate_std



# CIM 2 type name.
_CIM_2_REALM = "cim.2.science.scientific_realm"


def validate(key, defn, processes):
    """Validates a scientific realm specialization.

    :param str key: Realm key.
    :param module defn: Realm definition.

    """
    defn.PROCESS_KEYS = [p.__name__ for p in processes]

    # Validate standard attributes.
    errors = []
    errors += validate_std(defn, _CIM_2_REALM)

    # Validate REALM.
    if not hasattr(defn, "REALM"):
        errors.append("REALM is missing")
    elif not defn.REALM == key:
        errors.append("REALM must be = {}".format(key))

    # Validate GRID.
    if not hasattr(defn, "GRID"):
        errors.append("GRID is missing")
    elif not defn.GRID == "{}_grid".format(key):
        errors.append("GRID must be = {}".format("{}_grid".format(key)))

    # Validate KEY_PROPERTIES.
    if not hasattr(defn, "KEY_PROPERTIES"):
        errors.append("KEY_PROPERTIES property is missing")
    elif not defn.KEY_PROPERTIES == "{}_key_properties".format(key):
        errors.append("KEY_PROPERTIES must be = {}".format("{}_key_properties".format(key)))

    # Validate PROCESSES.
    if not hasattr(defn, "PROCESSES"):
        errors.append("PROCESSES property is missing")
    elif not isinstance(defn.PROCESSES, list):
        errors.append("PROCESSES must be a list of process keys")
    else:
        for process_key in defn.PROCESSES:
            if process_key not in defn.PROCESS_KEYS:
                err = "invalid process key: {}".format(process_key)
                errors.append(err)

    return ["realm: {}".format(e) for e in errors]
