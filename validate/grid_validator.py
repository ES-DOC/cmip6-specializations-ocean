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


def validate(key, defn):
    """Validates a scientific grid specialization.

    :param str key: Grid key.
    :param module defn: Grid definition.

    """
    errors = []

    # Validate standard attributes.
    errors += validate_std(defn, _CIM_2_GRID)

    return ["grid: {}".format(e) for e in errors]
