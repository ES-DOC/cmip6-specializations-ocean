# -*- coding: utf-8 -*-

"""
.. module:: generate_qconfig.py
   :platform: Unix, Windows
   :synopsis: Encodes a cmip6 specialization as an ES-DOC Questionnaire qcongig file.

.. moduleauthor:: Allyn Treshansky <allyn.treshansky@gmail.com>


"""
import collections
import datetime
import json
import re

from cim_profile import CIM_PROFILE
from utils_constants import *
from utils_model import PropertySpecialization
from utils_model import TopicSpecialization
from utils_parser import SpecializationParser

QCONFIG_ATOMIC_PROPERTY_TYPE = "ATOMIC"
QCONFIG_ENUMERATION_PROPERTY_TYPE = "ENUMERATION"
QCONFIG_RELATIONSHIP_PROPERTY_TYPE = "RELATIONSHIP"

# mapping to go from specializations to schemas
_SPECIALIZATION_TO_SCHEMA_MAP = {
    "realm": "science.realm",
    "grid": "science.topic",
    "keyprops": "science.topic",
    "key_properties": "science.topic",
    "process": "science.topic",
    "sub-process": "science.topic",
    "timestepping_framework": "science.topic",
    "advection": "science.topic",
    "lateral_physics": "science.topic",
    "vertical_physics": "science.topic",
    "uplow_boundaries": "science.topic",
    "boundary_forcing": "science.topic",
}



# mapping to go from specialization/schema types to questionnaire types
_QCONFIG_ATOMIC_TYPE_MAP = {
    # TOOD: WHAT ABOUT 'email' AND 'time' ?
    "BOOLEAN": "BOOLEAN",
    "date": "DATE",
    "datetime": "DATETIME",
    "FLOAT": "DECIMAL",
    "INTEGER": "INTEGER",
    "STRING": "STRING",
    "unicode": "STRING",
    "uri": "URL",
    "uuid": "STRING",
}


def find_object_in_sequence(dct, sequence):
    """
    searches a JSON array for an object w/ the specified key/value pairs
    :param dct: key/value pairs to check
    :param sequence: JSON array to search
    :return: 1st matching JSON object or None
    """

    def _is_dct_in_item(i):
        for k, v in dct.iteritems():
            if k not in i or i[k] != v:
                return False
        return True

    for item in sequence:
        if _is_dct_in_item(item):
            return item

    return None


class Generator(SpecializationParser):
    """Specialization to qconfig generator.

    """
    def __init__(self, root, short_tables):
        """Instance constructor.

        """
        super(Generator, self).__init__(root, short_tables)

        self.qconfig = collections.OrderedDict()
        self.qconfig["name"] = root.name
        self.qconfig["version"] = root.change_history[-1][0]
        self.qconfig["documentation"] = root.description
        self.qconfig["ontology_type"] = "SPECIALIZATION"
        # TODO: "ontology_base" OUGHT TO BE DEFINED MANUALLY IN THE QUESTIONNAIRE, RIGHT?
        self.qconfig["ontology_base"] = "cim_2.0.0"
        self.qconfig["date"] = str(datetime.datetime.now())
        self.qconfig["classes"] = {"inherited": [], "excluded": [], "defined": []}

        self.current_model = None
        self.current_category = None
        self.current_property = None

    def get_output(self):
        """Returns generated output as a text blob.

        """
        return json.dumps(self.qconfig, indent=4)

    def on_root_parse(self, root):
        """On root parse event handler.

        """
        schema_class = _SPECIALIZATION_TO_SCHEMA_MAP[root.type_key]
        schema_properties = CIM_PROFILE.get(schema_class)

        # record any inherited class...
        pass

        # record any excluded class...
        pass

        # record the defined class...
        new_qconfig_class = collections.OrderedDict()
        new_qconfig_class_package, new_qconfig_class_name = schema_class.split('.')
        new_qconfig_class["name"] = new_qconfig_class_name
        new_qconfig_class["package"] = new_qconfig_class_package
        new_qconfig_class["id"] = root.id
        new_qconfig_class["documentation"] = root.description
        new_qconfig_class["is_document"] = True

        new_qconfig_class["categories"] = {"inherited": [], "excluded": [], "defined": []}

        new_qconfig_class["properties"] = {"inherited": [], "excluded": [], "defined": []}

        # record any inherited properties...
        if schema_properties:
            new_qconfig_class["properties"]["inherited"] = schema_properties["include"]

        # record any excluded properties...
        if schema_properties:
            new_qconfig_class["properties"]["excluded"] = schema_properties["exclude"]

        # create the defined properties...
        # a realm has 3 defined properties: grid, key_properties, and processes
        # the corresponding classes are defined below in specific event handlers
        if root[TYPE_KEY_GRID] is not None:
            grid = root[TYPE_KEY_GRID]
            new_qconfig_property = self._emit_property(
                name="grid",
                # id=?!?
                cardinality="0.1",
                is_nillable=True,
                property_type=QCONFIG_RELATIONSHIP_PROPERTY_TYPE,
                relationship_targets=[_SPECIALIZATION_TO_SCHEMA_MAP[grid.name]],
                relationship_is_hierarchical=True,
                values=[grid.id],
            )
            new_qconfig_class["properties"]["defined"].append(new_qconfig_property)
        if root[TYPE_KEY_KEYPROPS] is not None:
            key_properties = root[TYPE_KEY_KEYPROPS]
            new_qconfig_property = self._emit_property(
                name="key_properties",
                # id=?!?
                cardinality="1.1",
                is_nillable=True,
                property_type=QCONFIG_RELATIONSHIP_PROPERTY_TYPE,
                relationship_targets=[_SPECIALIZATION_TO_SCHEMA_MAP[key_properties.name]],
                relationship_is_hierarchical=True,
                values=[key_properties.id],
            )
            new_qconfig_class["properties"]["defined"].append(new_qconfig_property)
        if root[TYPE_KEY_PROCESS] is not None:
            processes = root[TYPE_KEY_PROCESS]
            new_qconfig_property = self._emit_property(
                name="processes",
                # id=?!?
                cardinality="{0}.{1}".format(len(processes), len(processes)),
                is_nillable=True,
                property_type=QCONFIG_RELATIONSHIP_PROPERTY_TYPE,
                relationship_targets=list(set([_SPECIALIZATION_TO_SCHEMA_MAP[p.name] for p in processes])),
                relationship_is_hierarchical=True,
                values=[p.id for p in processes],
            )
            new_qconfig_class["properties"]["defined"].append(new_qconfig_property)

        self.qconfig["classes"]["defined"].append(new_qconfig_class)
        self.current_model = root

    def on_grid_parse(self, grid):
        """On grid parse event handler.

        """
        if self.current_model:
            parent_model = find_object_in_sequence({"id": self.current_model.id}, self.qconfig["classes"]["defined"])
            assert parent_model is not None
            if self.current_category:
                parent_category = find_object_in_sequence({"id": self.current_category.id}, parent_model["categories"]["defined"])
                # assert parent_category is not None
            if self.current_property:
                parent_property = find_object_in_sequence({"name": self.current_property.name}, parent_model["properties"]["defined"])
                # assert parent_property is not None

        schema_class = _SPECIALIZATION_TO_SCHEMA_MAP[grid.type_key]
        schema_properties = CIM_PROFILE.get(schema_class)

        new_qconfig_class = collections.OrderedDict()
        new_qconfig_class_package, new_qconfig_class_name = schema_class.split('.')
        new_qconfig_class["name"] = new_qconfig_class_name
        new_qconfig_class["id"] = grid.id
        new_qconfig_class["package"] = new_qconfig_class_package
        new_qconfig_class["documentation"] = grid.description
        new_qconfig_class["is_document"] = True

        new_qconfig_class["categories"] = {"inherited": [], "excluded": [], "defined": []}

        new_qconfig_class["properties"] = {"inherited": [], "excluded": [], "defined": []}

        # record any inherited properties...
        if schema_properties:
            new_qconfig_class["properties"]["inherited"] = schema_properties["include"]

        # record any excluded properties...
        if schema_properties:
            new_qconfig_class["properties"]["excluded"] = schema_properties["exclude"]

        self.qconfig["classes"]["defined"].append(new_qconfig_class)
        self.current_model = grid

    def on_keyprops_parse(self, key_props):
        """On key-properties parse event handler.

        """
        if self.current_model:
            parent_model = find_object_in_sequence({"id": self.current_model.id}, self.qconfig["classes"]["defined"])
            assert parent_model is not None
            if self.current_category:
                parent_category = find_object_in_sequence({"id": self.current_category.id}, parent_model["categories"]["defined"])
                # assert parent_category is not None
            if self.current_property:
                parent_property = find_object_in_sequence({"name": self.current_property.name}, parent_model["properties"]["defined"])
                # assert parent_property is not None

        schema_class = _SPECIALIZATION_TO_SCHEMA_MAP[key_props.type_key]
        schema_properties = CIM_PROFILE.get(schema_class)

        new_qconfig_class = collections.OrderedDict()
        new_qconfig_class_package, new_qconfig_class_name = schema_class.split('.')
        new_qconfig_class["name"] = new_qconfig_class_name
        new_qconfig_class["id"] = key_props.id
        new_qconfig_class["package"] = new_qconfig_class_package
        new_qconfig_class["documentation"] = key_props.description
        new_qconfig_class["is_document"] = False

        new_qconfig_class["categories"] = {"inherited": [], "excluded": [], "defined": []}

        new_qconfig_class["properties"] = {"inherited": [], "excluded": [], "defined": []}

        # record any inherited properties...
        if schema_properties:
            new_qconfig_class["properties"]["inherited"] = schema_properties["include"]

        # record any excluded properties...
        if schema_properties:
            new_qconfig_class["properties"]["excluded"] = schema_properties["exclude"]

        self.qconfig["classes"]["defined"].append(new_qconfig_class)
        self.current_model = key_props

    def on_process_parse(self, process):
        """On process parse event handler.

        """
        if self.current_model:
            parent_model = find_object_in_sequence({"id": self.current_model.id}, self.qconfig["classes"]["defined"])
            assert parent_model is not None
            if self.current_category:
                parent_category = find_object_in_sequence({"id": self.current_category.id}, parent_model["categories"]["defined"])
                # assert parent_category is not None
            if self.current_property:
                parent_property = find_object_in_sequence({"name": self.current_property.name}, parent_model["properties"]["defined"])
                # assert parent_property is not None

        schema_class = _SPECIALIZATION_TO_SCHEMA_MAP[process.type_key]
        schema_properties = CIM_PROFILE.get(schema_class)

        new_qconfig_class = collections.OrderedDict()
        new_qconfig_class_package, new_qconfig_class_name = schema_class.split('.')
        new_qconfig_class["name"] = new_qconfig_class_name
        new_qconfig_class["id"] = process.id
        new_qconfig_class["package"] = new_qconfig_class_package
        new_qconfig_class["documentation"] = process.description
        new_qconfig_class["is_document"] = False

        new_qconfig_class["categories"] = {"inherited": [], "excluded": [], "defined": []}

        new_qconfig_class["properties"] = {"inherited": [], "excluded": [], "defined": []}

        # record any inherited properties...
        if schema_properties:
            new_qconfig_class["properties"]["inherited"] = schema_properties["include"]

        # record any excluded properties...
        if schema_properties:
            new_qconfig_class["properties"]["excluded"] = schema_properties["exclude"]

        self.qconfig["classes"]["defined"].append(new_qconfig_class)
        self.current_model = process

    def on_subprocess_parse(self, subprocess):
        """On sub-process parse event handler.

        """
        if self.current_model:
            parent_model = find_object_in_sequence({"id": self.current_model.id}, self.qconfig["classes"]["defined"])
            assert parent_model is not None
            if self.current_category:
                parent_category = find_object_in_sequence({"id": self.current_category.id}, parent_model["categories"]["defined"])
                # assert parent_category is not None
            if self.current_property:
                parent_property = find_object_in_sequence({"name": self.current_property.name}, parent_model["properties"]["defined"])
                # assert parent_property is not None

        # TODO: AM I SURE THAT A SUB-PROCESS ALWAYS MAPS TO A CATEGORY ?

        new_qconfig_category = collections.OrderedDict()
        new_qconfig_category["name"] = subprocess.name
        new_qconfig_category["id"] = subprocess.id
        new_qconfig_category["documentation"] = subprocess.description

        parent_model["categories"]["defined"].append(new_qconfig_category)
        self.current_category = subprocess

    def on_property_set_parse(self, prop_set):
        """On property set parse event handler.

        """
        if self.current_model:
            parent_model = find_object_in_sequence({"id": self.current_model.id}, self.qconfig["classes"]["defined"])
            assert parent_model is not None
            if self.current_category:
                parent_category = find_object_in_sequence({"id": self.current_category.id}, parent_model["categories"]["defined"])
                # assert parent_category is not None
            if self.current_property:
                parent_property = find_object_in_sequence({"name": self.current_property.name}, parent_model["properties"]["defined"])
                # assert parent_property is not None

        new_qconfig_category = collections.OrderedDict()
        new_qconfig_category["name"] = prop_set.name
        new_qconfig_category["id"] = prop_set.id
        new_qconfig_category["documentation"] = prop_set.description

        parent_model["categories"]["defined"].append(new_qconfig_category)
        self.current_category = prop_set

    def on_property_parse(self, prop):
        """On property parse event handler.

        """
        if self.current_model:
            parent_model = find_object_in_sequence({"id": self.current_model.id}, self.qconfig["classes"]["defined"])
            assert parent_model is not None
            if self.current_category:
                parent_category = find_object_in_sequence({"id": self.current_category.id}, parent_model["categories"]["defined"])
                # assert parent_category is not None
            if self.current_property:
                parent_property = find_object_in_sequence({"name": self.current_property.name}, parent_model["properties"]["defined"])
                # assert parent_property is not None

        if prop.typeof_label == "ENUM":
            enumeration_members = []
            for i, member in enumerate(prop.enum.choices):
                new_enumeration_member = collections.OrderedDict()
                new_enumeration_member["order"] = i
                new_enumeration_member["value"] = member.value
                if member.description:
                    new_enumeration_member["documentation"] = member.description
                enumeration_members.append(new_enumeration_member)
            new_qconfig_property = self._emit_property(
                name=prop.name,
                id=prop.id,
                documentation=prop.description,
                cardinality=prop.cardinality,
                category_id=None if parent_category is None else parent_category.get("id"),
                property_type=QCONFIG_ENUMERATION_PROPERTY_TYPE,
                enumeration_is_open=prop.enum.is_open,
                enumeration_members=enumeration_members,
            )
        else:
            new_qconfig_property = self._emit_property(
                name=prop.name,
                id=prop.id,
                documentation=prop.description,
                cardinality=prop.cardinality,
                category_id=None if parent_category is None else parent_category.get("id"),
                property_type=QCONFIG_ATOMIC_PROPERTY_TYPE,
                atomic_type=_QCONFIG_ATOMIC_TYPE_MAP[prop.typeof_label],
            )

        parent_model["properties"]["defined"].append(new_qconfig_property)
        self.current_property = prop

#     def on_enum_choice_parse(self, choice):
#         """On enum property parse event handler.
#
#         """
#         pass
#

    def _emit_property(self, name=None, id=None, category_id=None, is_meta=False, documentation="", cardinality=None, is_nillable=True, property_type=None, atomic_type=None, enumeration_is_open=True, enumeration_members=None, relationship_is_hierarchical=False, relationship_targets=None, values=[]):
        """Returns an OrderedDict representing a single property; all of the event handlers use this

        """

        assert name is not None and cardinality is not None and property_type is not None

        new_qconfig_property = collections.OrderedDict()
        new_qconfig_property["name"] = name
        new_qconfig_property["cardinality"] = cardinality
        new_qconfig_property["property_type"] = property_type
        new_qconfig_property["documentation"] = documentation
        new_qconfig_property["is_meta"] = is_meta
        new_qconfig_property["is_nillable"] = is_nillable
        new_qconfig_property["values"] = values

        if property_type == QCONFIG_ATOMIC_PROPERTY_TYPE:
            assert atomic_type is not None
            new_qconfig_property["atomic_type"] = atomic_type
        elif property_type == QCONFIG_ENUMERATION_PROPERTY_TYPE:
            assert enumeration_members is not None
            new_qconfig_property["enumeration_members"] = enumeration_members
            new_qconfig_property["enumeration_is_open"] = enumeration_is_open
        elif property_type == QCONFIG_RELATIONSHIP_PROPERTY_TYPE:
            assert relationship_targets is not None
            new_qconfig_property["relationship_targets"] = relationship_targets
            new_qconfig_property["is_hierarchical"] = relationship_is_hierarchical
        else:
            msg = "Unknown property_type: '{0}'".format(property_type)
            raise Exception(msg)

        if id is not None:
            new_qconfig_property["id"] = id
        if category_id is not None:
            new_qconfig_property["category_id"] = category_id

        return new_qconfig_property
