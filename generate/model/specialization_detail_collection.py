# -*- coding: utf-8 -*-

"""
.. module:: specialization_detail_collection.py
   :platform: Unix, Windows
   :synopsis: Wraps a base CMIP6 specialization detail collection.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .specialization import Specialization
from .detail import Detail



class SpecializationDetailCollection(Specialization):
    """Wraps a detail collection, e.g. TUNNING_APPLIED.

    """
    def __init__(self, mod, owner, name, collection):
        """Instance constructor.

        """
        super(SpecializationDetailCollection, self).__init__(mod)

        details = getattr(mod, "{}_DETAILS".format(collection))
        obj = getattr(mod, collection)[name]

        self.id = "{}.{}".format(owner.id, name)
        self.description = obj['description']
        self.detail_keys = obj['details']
        self.details = [Detail(mod, self, i, j)
                        for i, j in details.items()
                        if isinstance(j, dict)]
        self.name = name
        self.owner = owner
