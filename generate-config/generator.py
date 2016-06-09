# -*- coding: utf-8 -*-

"""
.. module:: write_cmip6_xmind.py
   :platform: Unix, Windows
   :synopsis: Rewrites cmip6 vocab defintions to xmind files.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections
import json


from utils_model import Grid
from utils_model import KeyProperties
from utils_model import Process
from utils_model import Realm
from utils_parser import Parser



# Map of output types to keys.
_JSON_KEYS = {
    Realm: "realm",
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
        with open(fpath, 'r') as f:
            self._data = json.loads(f.read())


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
        obj = collections.OrderedDict()
        for mod, mod_obj in self._maps.items():
            if type(mod) not in _JSON_KEYS.keys():
                continue
            if isinstance(mod, Grid):
                print mod
            if isinstance(mod, Process):
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


    def on_grid_parse(self, realm, grid):
        """On grid parse event handler.

        """
        obj = self._map_module(grid)

        self._maps[grid] = obj


    def on_key_properties_parse(self, realm, key_properties):
        """On key_properties parse event handler.

        """
        obj = self._map_module(key_properties)

        self._maps[key_properties] = obj


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        obj = self._map_module(process)

        self._maps[process] = obj


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._format_name(subprocess.name)
        obj['description'] = subprocess.description
        obj['id'] = subprocess.id

        process = self._maps[process]
        process['subProcesses'] = process.get('subProcesses') or []
        process['subProcesses'].append(obj)

        self._maps[subprocess] = obj


    def on_detail_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._format_name(detail.name)
        obj['description'] = detail.description
        obj['id'] = detail.id

        container = self._maps[owner]
        container['details'] = container.get('details') or []
        container['details'].append(obj)

        self._maps[detail] = obj


    def on_detail_property_parse(self, owner, detail_property):
        """On detail property parse event handler.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._format_name(detail_property.name)
        obj['description'] = detail_property.description
        obj['id'] = detail_property.id

        obj['cardinality'] = detail_property.cardinality
        obj['type'] = detail_property.typeof

        container = self._maps[owner]
        container['properties'] = container.get('properties') or []
        container['properties'].append(obj)

        self._maps[detail_property] = obj


    def _map_module(self, mod):
        """Maps a specialization module to a dictionary.

        """
        obj = collections.OrderedDict()
        obj['label'] = self._format_name(mod.name)
        obj['description'] = mod.description
        obj['id'] = mod.id
        obj['contact'] = mod.contact

        return obj


    def _format_name(self, name):
        name = name.replace("_", " ")

        return " ".join("{}{}".format(n[0].upper(), n[1:]) for n in name.split(" "))
