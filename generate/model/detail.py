# -*- coding: utf-8 -*-

"""
.. module:: detail.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization detail definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .enum import Enum
from .specialization import Specialization



class Detail(Specialization):
    """Wraps a detail specialization.

    """
    def __init__(self, mod, container, name, obj):
        """Instance constructor.

        """
        super(Detail, self).__init__(mod)

        # Contract name where container is referenced as part of the name.
        name = name.split(":")[-1]
        try:
            self.id = "{}.{}".format(container.id, name)
        except AttributeError:
            self.id = None
        self.name = name
        self.obj = obj
        self.cfg_section = "detail"
        self.description = self.obj['description']
        self.properties = [DetailProperty(mod, self, i) for i in self.obj['properties']]


class DetailProperty(Specialization):
    """Wraps a detail-property specialization.

    """
    def __init__(self, mod, container, obj):
        """Instance constructor.

        """
        super(DetailProperty, self).__init__(mod)

        self.name, self.typeof, self.cardinality, self.description = obj
        self.container = container
        self.cfg_section = "detail-property"
        if self.typeof.startswith("ENUM"):
            self.enum = Enum(mod, self.typeof.split(":")[-1])
            self.typeof = "enum"
        else:
            self.enum = None


    @property
    def id(self):
        """Gets id associated with detail-property.

        """
        return "{}.{}".format(self.container.id, self.name)


    def short_id(self, idx):
        return ".".join(self.id.split(".")[idx:])


    @property
    def is_mandatory(self):
        """Gets flag indicating whether cardinality is mandatory or not.

        """
        return self.cardinality.split(".")[0] == "0"


    @property
    def is_collection(self):
        """Gets flag indicating whether property is a collection or not.

        """
        try:
            int(self.cardinality.split(".")[1])
        except ValueError:
            return True
        else:
            return False

    @property
    def typeof_label(self):
        """Gets label for the property type.

        """
        if self.typeof == 'str':
            return "STRING"
        elif self.typeof == 'bool':
            return "BOOLEAN"
        elif self.typeof == 'int':
            return "INTEGER"
        elif self.typeof == 'float':
            return "FLOAT"

        return self.typeof.upper()
