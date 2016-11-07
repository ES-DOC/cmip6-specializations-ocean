# -*- coding: utf-8 -*-

"""
.. module:: enum.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization enum definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .specialization import Specialization


class Enum(Specialization):
    """Wraps the definitions of a CMIP6 enumeration definition.

    """
    def __init__(self, mod, name):
        """Instance constructor.

        """
        super(Enum, self).__init__(mod)

        self.id = name
        self.cfg_section = "enum"
        self.description = mod.ENUMERATIONS[name]['description']
        self.is_open = mod.ENUMERATIONS[name]['is_open']
        self.label = name
        self.name = name
        self.choices = [EnumChoice(self, i[0], i[1]) for i in
                        sorted(mod.ENUMERATIONS[name]['members'])]
        if self.is_open:
            self.choices.append(EnumChoice(self, "Other", None))


class EnumChoice(Specialization):
    """Wraps the definitions of a CMIP6 enumeration choice definition.

    """
    def __init__(self, owner, value, description):
        """Instance constructor.

        """
        super(EnumChoice, self).__init__(owner.mod)

        self.description = description
        self.id = "{}.{}".format(owner.id, value)
        self.value = value
        self.cfg_section = "enum-choice"
        self.is_other = value == 'Other'
