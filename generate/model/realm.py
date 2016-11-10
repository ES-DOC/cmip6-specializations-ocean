# -*- coding: utf-8 -*-

"""
.. module:: realm.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization realm definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .topic import Topic
from .process import Process



class Realm(Topic):
    """Wraps a realm specialization.

    """
    def __init__(self, specializations, sort_collections=False):
        """Instance constructor.

        :param tuple specializations: Set of realm related specialization.

        """
        # Unpack specializations.
        mod, grid, key_properties, processes = specializations

        super(Realm, self).__init__(None, mod, "realm")

        self.grid = Topic(self, grid, "grid") if grid else None
        self.key_properties = Topic(self, key_properties, "key-properties") if key_properties else None
        self.processes = [Process(self, i, sort_collections) for i in processes]
