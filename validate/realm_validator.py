"""
.. module:: realm_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific realm specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import validate_std
from utils import is_collection
from utils import is_expected
from utils import is_required
from utils import is_type


# CIM 2 type name.
_CIM_2_REALM = "cim.2.science.scientific_realm"


def _set_helper_fields(realm, processes):
    """Inject helper attributes used downstream.

    """
    realm.CIM_ID = realm.__name__
    realm.CIM_TYPE = _CIM_2_REALM
    realm.KEY = realm.__name__
    realm.PROCESS_KEYS = [p.__name__ for p in processes]


def validate(realm, processes):
    """Validates a scientific realm specialization.

    :param module realm: Realm specialization being validated.
    :param list processes: Set of associated process specializations being validated.

    """
    # Set helper fields.
    _set_helper_fields(realm, processes)

    # Validate standard attributes.
    validate_std(realm)

    # Validate REALM.
    is_required(realm, "REALM")
    is_expected(realm, "REALM", realm.KEY)

    # Validate GRID.
    is_required(realm, "GRID")
    is_expected(realm, "GRID", "{}_grid".format(realm.KEY))

    # Validate KEY_PROPERTIES.
    is_required(realm, "KEY_PROPERTIES")
    is_expected(realm, "KEY_PROPERTIES", "{}_key_properties".format(realm.KEY))

    # Validate PROCESSES.
    is_required(realm, "PROCESSES")
    is_type(realm, "PROCESSES", list)
    is_collection(realm, "PROCESSES", str)

    # Validate process keys.
    for key in realm.PROCESSES:
        if key not in realm.PROCESS_KEYS:
            err = "Invalid process key: {}".format(key)
            realm.ERRORS.append(err)
