# -*- coding: utf-8 -*-

"""
.. module:: generate_ids_level_2.py
   :platform: Unix, Windows
   :synopsis: Generates level 2 identifiers.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from generate_ids import Generator as IdentifierGenerator



class Generator(IdentifierGenerator):
    """Specialization to mindmap generator.

    """
    def on_grid_discretisation_parse(self, realm, grid, discretisation):
        """On grid discretisation parse event handler.

        """
        self.set_id(discretisation, "{}.discretisation".format(grid.id))


    def on_key_properties_conservation_parse(self, realm, grid, conservation):
        """On key-properties conservation parse event handler.

        """
        self.set_id(conservation, "{}.conservation".format(grid.id))


    def on_detail_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        self.set_id(detail)
