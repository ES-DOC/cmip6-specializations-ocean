# -*- coding: utf-8 -*-

"""
.. module:: process.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization process definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .specialization_module import SpecializationModule
from .sub_process import SubProcess



class Process(SpecializationModule):
    """Wraps a process specialization.

    """
    def __init__(self, realm, mod, sort_collections):
        """Instance constructor.

        """
        super(Process, self).__init__(realm, mod, "process")

        try:
            self.sub_processes = [SubProcess(self, i, j, sort_collections) for i, j in mod.SUB_PROCESSES.items()]
        except AttributeError:
            self.sub_processes = []
