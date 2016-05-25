"""
.. module:: sub_process_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific sub-process specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import validate_key



def _set_helper_fields(realm, process, sub_process):
    """Inject helper attributes used downstream.

    """
    pass


def validate(realm, process, sub_process):
    """Validates a scientific sub-process specialization.

    :param module realm: Realm specialization being validated.
    :param module process: Process specialization being validated.
    :param dict sub_process: Sub-process specialization being validated.

    """
    # Set helper fields.
    _set_helper_fields(realm, process, sub_process)
  
    # Validate sub-process fields.
    validate_key(sub_process, "description")
    validate_key(sub_process, "details", expected_type=list)

    # Validate sub-process detail keys.
    for key in sub_process['details']:
        if key not in process.SUB_PROCESS_DETAILS:
            err = "Invalid detail key: {}".format(key)
            sub_process['ERRORS'].append(err)

    # Append errors to process error collection.
    process.ERRORS += ["sub-process={} :: {}".format(sub_process['key'], e)
                       for e in sub_process['ERRORS']]
