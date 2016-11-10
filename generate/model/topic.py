# -*- coding: utf-8 -*-

"""
.. module:: specialization_module.py
   :platform: Unix, Windows
   :synopsis: Wraps a base CMIP6 specialization module.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .detail import DetailSet
from .specialization import Specialization



class Topic(Specialization):
    """Wraps a standard specialization module.

    """
    def __init__(self, owner, mod, cfg_section):
        """Instance constructor.

        """
        super(Topic, self).__init__(mod)

        self.authors = mod.AUTHORS
        self.cfg_section = cfg_section
        self.contact = mod.CONTACT
        try:
            self.contributors = mod.CONTRIBUTORS
        except AttributeError:
            self.contributors = ""
        self.description = mod.DESCRIPTION
        self.full_name = mod.__name__.split(".")[-1]
        self.mod = mod
        self.qc_status = mod.QC_STATUS

        if owner:
            self.name = "_".join(mod.__name__.split(".")[-1].split("_")[1:])
            self.id = "{}.{}".format(owner.id, self.name)
        else:
            self.name = mod.__name__
            self.id = "cmip6.{}".format(self.name)
        self.name_camel_case = to_camel_case(self.name)
        self.name_camel_case_spaced = to_camel_case_spaced(self.name)

        try:
            self.mod.DETAILS
        except AttributeError:
            self.details = []
        else:
            self.details = [DetailSet(self.mod, self, i, j)
                            for i, j in self.mod.DETAILS.items()
                            if isinstance(j, dict)]


def to_camel_case_spaced(name, separator='_'):
    """Converts passed name to camel case with space.

    :param str name: A name as specified in ontology specification.
    :param str separator: Separator to use in order to split name into constituent parts.

    """
    s = to_camel_case(name, separator)
    r = s[0]
    for s in s[1:]:
        if s.upper() == s:
            r += " "
        r += s

    return r


def to_camel_case(name, separator='_'):
    """Converts passed name to camel case.

    :param str name: A name as specified in ontology specification.
    :param str separator: Separator to use in order to split name into constituent parts.

    """
    r = ''
    if name is not None:
        s = name.split(separator)
        for s in s:
            if (len(s) > 0):
                r += s[0].upper()
                if (len(s) > 1):
                    r += s[1:]
    return r