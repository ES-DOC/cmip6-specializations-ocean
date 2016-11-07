# -*- coding: utf-8 -*-

"""
.. module:: grid.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization grid definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .specialization import Specialization
from .specialization_detail_collection import SpecializationDetailCollection
from .specialization_module import SpecializationModule



class Grid(SpecializationModule):
    """Wraps a grid specialization.

    """
    def __init__(self, realm, mod):
        """Instance constructor.

        """
        super(Grid, self).__init__(realm, mod, "grid")

        self.discretisation = GridDiscretisation(mod, self)


class GridDiscretisation(SpecializationDetailCollection):
    """Wraps a grid discretization specialization.

    """
    def __init__(self, mod, owner):
        """Instance constructor.

        """
        super(GridDiscretisation, self).__init__(
            mod, owner, "discretisation", "DISCRETISATION")
