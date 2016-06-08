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



# HTML snippet for a set of notes.
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

# HTML snippet for a note.
_NOTE = "<dt><b>{}</b></dt><dd>{}</dd>"

# Set of configuration sections.
_CONFIG_SECTIONS = [
    "realm",
    "process",
    "sub-process",
    "detail",
    "detail-property",
    "enum-choice"
    ]



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
    def __init__(self, realm, stylesheet):
        """Instance constructor.

        """
        super(Generator, self).__init__(realm)

        self.cfg = _Configuration(stylesheet)
        self.mmap = None
        self.maps = {}
        self.nodes = {}


    def _emit_node(self, parent, owner, text=None, style=None):
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
        self._emit_font(owner, cfg)
        self._emit_notes(owner)


    def _emit_font(self, owner, cfg):
        """Styles a node with font information.

        """
        ET.SubElement(self.nodes[owner], 'font', {
            'BOLD': str(cfg['font-bold']),
            'NAME': cfg['font-name'],
            'SIZE': str(cfg['font-size'])
            })


    def _emit_notes(self, owner, notes=None):
        """Set notes associated with a node.

        """
        # Get node parent.
        if not isinstance(owner, ET.Element):
            parent = self.nodes[owner]
        else:
            parent = owner

        # Skip if owner does not define notes.
        if not notes:
            try:
                notes = owner.notes
            except AttributeError:
                return

        # Convert notes to HTML.
        notes = [_NOTE.format(k, v) for k, v in notes]
        notes = _NOTES.format("".join(notes))


        # Inject notes into mindmap.
        content = ET.SubElement(parent, 'richcontent', {"TYPE": "NOTE"})
        content.append(ET.fromstring(notes))


    def _emit_collection_node(self, owner, collection_type, style_type):
        """Sets a collection node, i..e a node that simply wraps items.

        """
        cfg = self.cfg.get_section(style_type)
        self.nodes[str(owner) + collection_type] = ET.SubElement(self.nodes[owner], 'node', {
            "STYLE": "bubble",
            'COLOR': cfg['font-color'],
            'BACKGROUND_COLOR': cfg['bg-color'],
            "TEXT": collection_type
            })


    def _emit_legend(self, realm):
        """Emits mindmap legend.

        """
        cfg = self.cfg.get_section
        legend = ET.SubElement(self.nodes[realm], 'node', {
            'STYLE': "bubble",
            'TEXT': "legend",
            'POSITION': "left"
            })
        for section in _CONFIG_SECTIONS:
            node = ET.SubElement(legend, 'node', {
                'BACKGROUND_COLOR': cfg(section)['bg-color'],
                'COLOR': cfg(section)['font-color'],
                'STYLE': "bubble",
                'TEXT': section
                })
            self._emit_notes(node, notes=[
                ('Description', cfg(section)['description']),
                ])


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        self.mmap = ET.Element('map', {})
        self._emit_node(self.mmap, realm, style="fork")
        self._emit_legend(realm)


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        self._emit_node(realm, process)
        self._emit_notes(process)
        # if process.details:
        #     self._emit_collection_node(process, "details", "detail")


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        self._emit_node(process, subprocess)


    def on_detail_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        if isinstance(owner, Process):
            self._emit_node(owner, detail)
            # self._emit_node(self.nodes[str(owner) + "details"], detail)
        else:
            self._emit_node(owner, detail)


    def on_detail_property_parse(self, owner, detail_property):
        """On detail property parse event handler.

        """
        self._emit_node(owner, detail_property)
        self._emit_notes(detail_property)
        for choice in detail_property.choices:
            self._emit_node(detail_property, choice, text=choice.value)
