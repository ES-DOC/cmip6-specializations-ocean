"""
.. module:: grid_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 scientific grid specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import validate_std


# CIM 2 type name.
_CIM_2_GRID = "cim.2.science.grid"


def _set_helper_fields(realm, grid):
    """Inject helper attributes used downstream.

    """
    grid.CIM_ID = "{}.{}".format(realm.CIM_ID, grid.__name__[len(realm.CIM_ID) + 1:])
    grid.CIM_TYPE = _CIM_2_GRID


def validate(realm, grid):
    """Validates a scientific grid specialization.

    :param module realm: Realm specialization being validated.
    :param module grid: Grid specialization being validated.

    """
    # Set helper fields.
    _set_helper_fields(realm, grid)

    # Validate standard attributes.
    validate_std(grid)
