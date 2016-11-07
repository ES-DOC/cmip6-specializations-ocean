# -*- coding: utf-8 -*-

"""
.. module:: sub_process.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization sub_process definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .specialization import Specialization
from .detail import Detail



class SubProcess(Specialization):
    """Wraps a sub-process specialization.

    """
    def __init__(self, process, name, obj, sort_collections):
        """Instance constructor.

        """
        super(SubProcess, self).__init__(process.mod)

        # Expand full sub-process detail keys.
        obj['details'] = ["{}:{}".format(name, i) for i in obj['details']]

        self.obj = obj
        self.name = name
        self.description = obj.get('description', name)
        self.id = "{}.{}".format(process.id, name)
        self.process = process
        self.cfg_section = "sub-process"
        self.details = [Detail(process.mod, self, i, process.mod.SUB_PROCESS_DETAILS[i])
                        for i in obj['details']]
