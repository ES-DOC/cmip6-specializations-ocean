"""
.. module:: process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import validate_std


# CIM 2 type name.
_CIM_2_PROCESS = "cim.2.science.process"


def _set_helper_fields(realm, process):
    """Inject helper attributes used downstream.

    """
    process.CIM_ID = "{}.{}".format(realm.CIM_ID, process.__name__[len(realm.CIM_ID) + 1:])
    process.CIM_TYPE = _CIM_2_PROCESS
    process.KEY = process.__name__
    sub_processes = []
    try:
        for key, defn in process.SUB_PROCESSES.items():
            defn['key'] = key
            defn['ERRORS'] = []
            sub_processes.append(defn)
    except AttributeError:
        pass
    finally:
        process.SUB_PROCESSES = sub_processes


def validate(realm, process):
    """Validates a scientific process specialization.

    :param module realm: Realm specialization being validated.
    :param module process: Process specialization being validated.

    """
    # Set helper fields.
    _set_helper_fields(realm, process)

    # Validate standard attributes.
    validate_std(process)
