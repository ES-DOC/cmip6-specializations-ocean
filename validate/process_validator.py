"""
.. module:: process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections
from utils import is_collection
from utils import is_required
from utils import is_type
from utils import set_default
from utils import validate_std
import sub_process_validator



# CIM 2 type name.
_CIM_2_PROCESS = "cim.2.science.process"


def _set_helper_fields(realm, process):
    """Inject helper attributes used downstream.

    """
    process.CIM_ID = "{}.{}".format(
        realm.CIM_ID, process.__name__[len(realm.CIM_ID) + 1:])
    process.CIM_TYPE = _CIM_2_PROCESS
    process.KEY = process.__name__
    set_default(process, 'DETAILS', collections.OrderedDict())
    set_default(process, 'ENUMERATIONS', collections.OrderedDict())
    set_default(process, 'SUB_PROCESSES', collections.OrderedDict())
    set_default(process, 'SUB_PROCESS_DETAILS', collections.OrderedDict())


def _validate_sub_processes(realm, process):
    for key, defn in process.SUB_PROCESSES.items():
        sub_process_validator.validate(realm, process, defn, key)




def validate(realm, process):
    """Validates a scientific process specialization.

    :param module realm: Realm specialization being validated.
    :param module process: Process specialization being validated.

    """
    # Set helper fields.
    _set_helper_fields(realm, process)

    # Validate standard attributes.
    validate_std(process)

    # Validate DETAILS.
    is_required(process, "DETAILS")
    is_type(process, "DETAILS", collections.OrderedDict)
    is_collection(process, "DETAILS", (dict, tuple))

    # Validate ENUMERATIONS.
    is_required(process, "ENUMERATIONS")
    is_type(process, "ENUMERATIONS", collections.OrderedDict)
    is_collection(process, "ENUMERATIONS", dict)

    # Validate SUB_PROCESSES.
    is_required(process, "SUB_PROCESSES")
    is_type(process, "SUB_PROCESSES", collections.OrderedDict)
    is_collection(process, "SUB_PROCESSES", dict)

    # Validate SUB_PROCESS_DETAILS.
    is_required(process, "SUB_PROCESS_DETAILS")
    is_type(process, "SUB_PROCESS_DETAILS", collections.OrderedDict)
    is_collection(process, "SUB_PROCESS_DETAILS", dict)

    # Escape if any errors at this point.
    if process.ERRORS:
        return

    # Validate sub-processes.
    for key, defn in process.SUB_PROCESSES.items():
        sub_process_validator.validate(realm, process, defn, key)
