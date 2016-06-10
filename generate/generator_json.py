# -*- coding: utf-8 -*-

"""
.. module:: generator.py
   :platform: Unix, Windows
   :synopsis: Rewrites a cmip6 realm specialization to json.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections
import json


from utils_model import Grid
from utils_model import GridDiscretisation
from utils_model import KeyProperties
from utils_model import Process
from utils_model import Realm
from utils_parser import Parser



# Map of output types to keys.
_JSON_KEYS = {
    Grid: "grid",
    KeyProperties: "keyProperties",
    Process: "process"
}



class _Configuration(object):
    """Wraps access to configuration information stored in associated config file.

    """
    def __init__(self, fpath):
        """Instance constructor.

        """
        with open(fpath, 'r') as fstream:
            self._data = json.loads(fstream.read())


    def get_section(self, key):
        """Returns a section within the config file.

        """
        return self._data.get(key, {})


class Generator(Parser):
    """Specialization to mindmap generator.

    """
    def __init__(self, realm):
        """Instance constructor.

        """
        super(Generator, self).__init__(realm)

        self._maps = collections.OrderedDict()


    @property
    def output(self):
        """Returns generated output as a text blob.

        """
        obj = self._maps[self.realm]
        # obj = collections.OrderedDict()
        for mod, mod_obj in self._maps.items():
            if type(mod) not in _JSON_KEYS.keys():
                continue
            elif isinstance(mod, Process):
                obj['processes'] = obj.get('processes') or []
                obj['processes'].append(mod_obj)
            else:
                obj[_JSON_KEYS[type(mod)]] = mod_obj

        return json.dumps(obj, indent=4)


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        obj = self._map_module(realm)

        self._maps[realm] = obj


    def on_realm_parsed(self, realm):
        """On realm parsed event handler.

        """
        pass
        # for spec, obj in self._maps.items():
        #     if isinstance(spec, GridD):

        #     print spec
        # # self._maps[discretisation] = obj
        # # self._maps[grid]['discretisation'] = obj


    def on_grid_parse(self, realm, grid):
        """On grid parse event handler.

        """
        obj = self._map_module(grid)

        self._maps[grid] = obj


    def on_grid_discretisation_parse(self, realm, grid, discretisation):
        """On grid discretisation parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = "Discretisation"
        obj['description'] = discretisation.description

        self._maps[discretisation] = obj
        self._maps[grid]['discretisation'] = obj


    def on_key_properties_parse(self, realm, key_properties):
        """On key_properties parse event handler.

        """
        obj = self._map_module(key_properties)

        self._maps[key_properties] = obj


    def on_key_properties_conservation_parse(self, realm, grid, conservation):
        """On key-properties conservation parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = "Conservation"
        obj['description'] = conservation.description

        self._maps[conservation] = obj
        self._maps[grid]['conservation'] = obj


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        obj = self._map_module(process)

        self._maps[process] = obj


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._get_label(subprocess.name)
        obj['description'] = subprocess.description
        obj['id'] = subprocess.id

        process = self._maps[process]
        process['subProcesses'] = process.get('subProcesses') or []
        process['subProcesses'].append(obj)

        self._maps[subprocess] = obj


    def on_detail_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        if owner not in self._maps:
            return

        obj = collections.OrderedDict()
        obj['label'] = self._get_label(detail.name)
        obj['description'] = detail.description
        obj['id'] = detail.id

        owner = self._maps[owner]
        owner['details'] = owner.get('details') or []
        owner['details'].append(obj)

        self._maps[detail] = obj


    def on_detail_property_parse(self, detail, prop):
        """On detail property parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._get_label(prop.name)
        obj['description'] = prop.description
        obj['id'] = prop.id

        obj['cardinality'] = prop.cardinality
        obj['type'] = "enum" if prop.typeof.find("ENUM") >= 0 else prop.typeof

        if prop.enum:
            obj['enum'] = {
                'label': prop.enum.name,
                'id': prop.enum.id,
                'description': prop.enum.description,
                'isOpen': True,
                'choices': []
            }

        detail = self._maps[detail]
        detail['properties'] = detail.get('properties') or []
        detail['properties'].append(obj)

        self._maps[prop] = obj


    def on_detail_property_choice_parse(self, detail, prop, choice):
        """On process detail property choice parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = choice.value
        obj['description'] = choice.description

        prop = self._maps[prop]
        prop['enum']['choices'] = prop['enum']['choices'] or []
        prop['enum']['choices'].append(obj)


    def _map_module(self, mod):
        """Maps a specialization module to a dictionary.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._get_label(mod.name)
        obj['description'] = mod.description
        obj['id'] = mod.id
        obj['contact'] = mod.contact

        return obj


    def _get_label(self, name):
        """Returns a name formatted as a label for UI purposes.

        """
        name = name.replace("_", " ")

        return " ".join("{}{}".format(n[0].upper(), n[1:]) for n in name.split(" "))
