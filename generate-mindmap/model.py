# -*- coding: utf-8 -*-

"""
.. module:: model.py
   :platform: Unix, Windows
   :synopsis: A repesentation of CMIP6 specializations.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import inspect

import utils



# Base url for linking back to meta-definitions.
_URL = "https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/"



class SpecializationModule(object):
    """Wraps a standard specialization module.

    """
    def __init__(self, owner, mod):
        """Instance constructor.

        """
        self.authors = mod.AUTHORS
        self.contact = mod.CONTACT
        self.description = mod.DESCRIPTION
        self.full_name = mod.__name__.split(".")[-1]
        self.mod = mod
        self.qc_status = mod.QC_STATUS
        if owner:
            self.name = "_".join(mod.__name__.split(".")[-1].split("_")[1:])
            self.id = "{}.{}".format(owner.id, self.name)
            self.url = "{}{}.py".format(_URL, self.full_name)
        else:
            self.name = mod.REALM
            self.id = "cmip6.{}".format(self.name)
            self.url = "{}{}.py".format(_URL, self.name)


    @property
    def notes(self):
        """Returns notes.

        """
        return [
            ("Description", self.description),
            ("ID", self.id),
            ("Python Definition", self.url)
        ]


class Realm(SpecializationModule):
    """Wraps a realm specialization.

    """
    def __init__(self, input_dir, realm_name):
        """Instance constructor.

        """
        mod, grid, key_properties, processes = \
            utils.get_specializations(input_dir, realm_name)

        super(Realm, self).__init__(None, mod)

        self.style_type = "realm"
        self.grid = Grid(self, grid)
        self.key_properties = KeyProperties(self, key_properties)
        self.processes = [Process(self, i) for i in processes]


    @property
    def notes(self):
        """Returns notes.

        """
        return [
            ("Description", self.description),
            ("ID", self.id),
            ("Python Definition", self.url)
        ]


class Process(SpecializationModule):
    """Wraps a process specialization.

    """
    def __init__(self, owner, mod):
        """Instance constructor.

        """
        super(Process, self).__init__(owner, mod)

        self.style_type = "process"
        try:
            mod.SUB_PROCESSES
        except AttributeError:
            self.sub_processes = []
        else:
            self.sub_processes = [SubProcess(self, i, j) for i, j in mod.SUB_PROCESSES.items()]


class Grid(SpecializationModule):
    """Wraps a grid specialization.

    """
    def __init__(self, owner, mod):
        """Instance constructor.

        """
        super(Grid, self).__init__(owner, mod)


class KeyProperties(SpecializationModule):
    """Wraps a key properties specialization.

    """
    def __init__(self, owner, mod):
        """Instance constructor.

        """
        super(KeyProperties, self).__init__(owner, mod)


class SubProcess(object):
    """Wraps a sub-process specialization.

    """
    def __init__(self, process, name, obj):
        """Instance constructor.

        """
        self.obj = obj
        self.name = name
        self.description = obj.get('description', name)
        self.id = "{}.{}".format(process.id, name)
        self.process = process
        self.style_type = "sub-process"
        self.url = process.url
        self.details = [Detail(process, self, i)
                        for i in obj['details']]


    @property
    def notes(self):
        """Returns notes.

        """
        return [
            ("Description", self.description),
            ("ID", self.id),
            ("Python Definition", self.url)
        ]


class Detail(object):
    """Wraps a detail specialization.

    """
    def __init__(self, process, sub_process, name):
        """Instance constructor.

        """
        self.mod = process.mod
        self.id = "{}.{}".format(sub_process.id, name)
        self.name = name
        self.obj = process.mod.SUB_PROCESS_DETAILS[name]
        self.process = process
        self.style_type = "detail"
        self.sub_process = sub_process
        self.url = process.url
        self.description = self.obj['description']
        self.properties = [DetailProperty(self, i) for i in self.obj['properties']]


    @property
    def notes(self):
        """Returns notes.

        """
        return [
            ("Description", self.description),
            ("ID", self.id),
            ("Python Definition", self.url)
        ]


class DetailProperty(object):
    """Wraps a detail-property specialization.

    """
    def __init__(self, container, obj):
        """Instance constructor.

        """
        self.name, self.typeof, self.cardinality, self.description = obj
        self.container = container
        self.mod = container.mod
        self.style_type = "detail-property"
        self.url = container.url


    @property
    def id(self):
        """Gets id associated with detail-property.

        """
        return "{}.{}".format(self.container.id, self.name)


    @property
    def is_enum(self):
        """Gets flag indicating whether the detail proeprty is associated with an enum or not.

        """
        return self.typeof.startswith("ENUM")


    @property
    def type_description(self):
        """Gets type description.

        """
        return "enum" if self.is_enum else self.typeof


    @property
    def choices(self):
        """Get set of enumeration choices associated with property.

        """
        if not self.is_enum:
            return []

        choices = self.mod.ENUMERATIONS[self.typeof.split(":")[-1]]['members']

        return [EnumChoice(self, i[0], i[1]) for i in sorted(choices)]


    @property
    def notes(self):
        """Returns notes.

        """
        return [
            ("Description", self.description),
            ("ID", self.id),
            ("Type", self.type_description),
            ("Cardinality", self.cardinality)
        ]


class EnumChoice(object):
    """Wraps the definitions of a CMIP6 enumeration choice definition.

    """
    def __init__(self, owner, value, description):
        """Instance constructor.

        """
        self.description = description
        self.id = "{}.{}".format(owner.id, value)
        self.value = value
        self.style_type = "enum-choice"


    @property
    def notes(self):
        """Returns notes.

        """
        return [
            ("Description", self.description.replace("&", "and")),
            ("ID", self.id.lower().replace(" ", "-").replace("_", "-"))
        ]