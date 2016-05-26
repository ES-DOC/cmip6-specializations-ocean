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
import sub_process_detail_validator



def _map_sub_process(defn, key):
    """Maps a sub-process definition to a first class object.

    """
    sp = lambda: None
    sp.key = key
    sp.ERRORS = []
    for k, v in defn.items():
        setattr(sp, k, v)

    return sp


def validate(realm, process, sub_process, sub_process_key):
    """Validates a scientific sub-process specialization.

    :param module realm: Realm specialization being validated.
    :param module process: Process specialization being validated.
    :param dict sub_process: Sub-process specialization being validated.
    :param str sub_process_key: Unique key associated with sub-process.

    """
    sub_process = _map_sub_process(sub_process, sub_process_key)

    # Validate description.
    is_required(sub_process, "description")
    is_type(sub_process, "description", str)

    # Validate details.
    if is_required(sub_process, "details") and \
       is_type(sub_process, "details", list) and \
       is_collection(sub_process, "details", str):
        for key in sub_process.details:
            if key not in process.SUB_PROCESS_DETAILS:
                err = "Invalid detail key: {}".format(key)
                sub_process.ERRORS.append(err)
            else:
                sub_process_detail_validator.validate(process, process.SUB_PROCESS_DETAILS[key], key)

    # Append errors to process error collection.
    process.ERRORS += ["sub-process={} :: {}".format(sub_process.key, e)
                       for e in sub_process.ERRORS]


def valdidate_sub_process_detail(defn, key):
    print defn
