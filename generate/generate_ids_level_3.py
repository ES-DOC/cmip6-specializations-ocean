# -*- coding: utf-8 -*-

"""
.. module:: generate_ids_level_3.py
   :platform: Unix, Windows
   :synopsis: Generates level 3 identifiers.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from generate_ids import Generator as IdentifierGenerator



class Generator(IdentifierGenerator):
    """Specialization to mindmap generator.

    """
    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        self.emit_null_row(process)


    def on_grid_parse(self, realm, grid):
        """On grid parse event handler.

        """
        self.emit_null_row(grid)


    def on_key_properties_parse(self, realm, key_properties):
        """On key_properties parse event handler.

        """
        self.emit_null_row(key_properties)


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        self.emit_null_row(subprocess)


    def on_detail_property_parse(self, detail, prop):
        """On process detail parse event handler.

        """
        self.set_id(prop)
