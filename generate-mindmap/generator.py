# -*- coding: utf-8 -*-

"""
.. module:: write_cmip6_xmind.py
   :platform: Unix, Windows
   :synopsis: Rewrites cmip6 vocab defintions to xmind files.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import json

import xml.etree.ElementTree as ET

from utils_model import Process
from utils_parser import Parser



_NOTES = """
<html>
  <head></head>
  <body>
    <dl>
        {}
    </dl>
  </body>
</html>
"""

_NOTE = "<dt><b>{}</b></dt><dd>{}</dd>"



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
    def __init__(self, realm, stylesheet):
        """Instance constructor.

        """
        super(Generator, self).__init__(realm)

        self.cfg = _Configuration(stylesheet)
        self.mmap = None
        self.maps = {}
        self.nodes = {}


    def run(self):
        self.parse()


    def _set_node(self, parent, owner, text=None, style=None):
        """Sets a mindmap node.

        """
        # Get section style config.
        cfg = self.cfg.get_section(owner.style_type)

        # Initialise mindmap node attributes.
        atts = {
            'FOLDED': str(cfg['is-collapsed']).lower(),
            'COLOR': cfg['font-color'],
            'BACKGROUND_COLOR': cfg['bg-color'],
            'STYLE': style or "bubble",
            'TEXT': text if text else owner.name
        }

        # Set node url.
        try:
            owner.url
        except AttributeError:
            pass
        else:
            atts['LINK'] = owner.url

        # Get node parent.
        if not isinstance(parent, ET.Element):
            parent = self.nodes[parent]

        # Create new node & cache.
        self.nodes[owner] = ET.SubElement(parent, 'node', atts)

        # Set node font / notes.
        self._set_font(owner, cfg)
        self._set_notes(owner)


    def _set_font(self, owner, cfg):
        """Styles a node with font information.

        """
        ET.SubElement(self.nodes[owner], 'font', {
            'BOLD': str(cfg['font-bold']),
            'NAME': cfg['font-name'],
            'SIZE': str(cfg['font-size'])
            })


    def _set_notes(self, owner):
        """Set notes associated with a node.

        """
        # Skip if owner does not define notes.
        try:
            notes = owner.notes
        except AttributeError:
            return

        # Convert notes to HTML.
        notes = [_NOTE.format(k, v) for k, v in owner.notes]
        notes = _NOTES.format("".join(notes))

        # Inject notes into mindmap.
        content = ET.SubElement(self.nodes[owner], 'richcontent', {"TYPE": "NOTE"})
        content.append(ET.fromstring(notes))


    def _set_collection_node(self, owner, collection_type):
        """Sets a collection node, i..e a node that simply wraps items.

        """
        self.nodes[str(owner) + collection_type] = ET.SubElement(self.nodes[owner], 'node', {
            "STYLE": "bubble",
            'COLOR': "#000000",
            'BACKGROUND_COLOR': "#F3FFE2",
            "TEXT": collection_type
            })


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        self.mmap = ET.Element('map', {})
        self._set_node(self.mmap, realm, style="fork")


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        self._set_node(realm, process)
        self._set_notes(process)
        if process.details:
            self._set_collection_node(process, "details")


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        self._set_node(process, subprocess)


    def on_detail_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        if isinstance(owner, Process):
            self._set_node(self.nodes[str(owner) + "details"], detail)
        else:
            self._set_node(owner, detail)


    def on_detail_property_parse(self, owner, detail_property):
        """On detail property parse event handler.

        """
        self._set_node(owner, detail_property)
        self._set_notes(detail_property)
        for choice in detail_property.choices:
            self._set_node(detail_property, choice, text=choice.value)
