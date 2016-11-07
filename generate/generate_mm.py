# -*- coding: utf-8 -*-

"""
.. module:: write_cmip6_xmind.py
   :platform: Unix, Windows
   :synopsis: Rewrites a cmip6 realm specialization to mindmap.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import collections
import json

import xml.etree.ElementTree as ET

from utils_model import CIM_PROFILE
from utils_model import DetailProperty
from utils_model import SpecializationModule
from utils_parser import Parser



# HTML snippet for a set of notes.
_NOTES_HTML = """
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
_NOTE_HTML = "<dt><b>{}</b></dt><dd>{}</dd>"

# Mind-map sections.
_SECTIONS = collections.OrderedDict()
_SECTIONS['realm'] = "science.realm"
_SECTIONS['process'] = "science.process"
_SECTIONS['sub-process'] = "science.sub_process"
_SECTIONS['key-properties'] = "science.key_properties"
_SECTIONS['grid'] = "science.grid"
_SECTIONS['detail'] = "science.detail"
_SECTIONS['detail-property'] = None
_SECTIONS['enum-choice'] = None


class _Configuration(object):
    """Wraps access to configuration information stored in associated config file.

    """
    def __init__(self):
        """Instance constructor.

        """
        fpath = "{}.conf".format(__file__.split(".")[0])
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

        self.cfg = _Configuration()
        self.mmap = None
        self.nodes = {}


    def get_output(self):
        """Returns generated output as a text blob.

        """
        return ET.tostring(self.mmap)


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        self.mmap = ET.Element('map', {})
        self._emit_node(self.mmap, realm, style="fork")
        self._emit_legend(realm)
        self._emit_cim_profile(realm)


    def on_grid_parse(self, realm, grid):
        """On grid parse event handler.

        """
        self._emit_node(realm, grid)


    def on_grid_discretisation_parse(self, realm, grid, discretisation):
        """On grid discretisation parse event handler.

        """
        self._emit_node(grid, discretisation, cfg_section="grid")


    def on_key_properties_parse(self, realm, key_properties):
        """On key_properties parse event handler.

        """
        self._emit_node(realm, key_properties)


    def on_key_properties_conservation_parse(self, realm, key_properties, conservation):
        """On grid discretisation parse event handler.

        """
        self._emit_node(key_properties, conservation, cfg_section="key-properties")


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        self._emit_node(realm, process)
        self._emit_notes(process)


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        self._emit_node(process, subprocess)


    def on_detail_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        self._emit_node(owner, detail)


    def on_detail_property_parse(self, detail, detail_property):
        """On detail property parse event handler.

        """
        self._emit_node(detail, detail_property)
        self._emit_notes(detail_property)

        if detail_property.enum:
            for choice in detail_property.enum.choices:
                self._emit_node(detail_property, choice, text=choice.value)


    def _emit_node(
        self,
        parent,
        owner,
        text=None,
        style=None,
        cfg_section=None
        ):
        """Sets a mindmap node.

        """
        # Get section style config.
        cfg = self.cfg.get_section(cfg_section if cfg_section else owner.cfg_section)

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
        """Set node font information.

        """
        ET.SubElement(self.nodes[owner], 'font', {
            'BOLD': str(cfg['font-bold']),
            'NAME': cfg['font-name'],
            'SIZE': str(cfg['font-size'])
            })


    def _emit_notes(self, owner, notes=None):
        """Set mindmap notes.

        """
        # Set parent mm node.
        parent = owner if isinstance(owner, ET.Element) else \
                 self.nodes[owner]

        # Set notes.
        notes = notes or _get_notes(owner)

        # Convert to HTML.
        html = []
        for k, value in notes:
            try:
                owner.id
            except AttributeError:
                pass
            else:
                value = value(owner)
            html.append(_NOTE_HTML.format(k, value))
        html = _NOTES_HTML.format("".join(html))

        # Extend mindmap.
        node = ET.SubElement(parent, 'richcontent', {"TYPE": "NOTE"})
        node.append(ET.fromstring(html))


    def _emit_legend(self, realm):
        """Emits mindmap legend.

        """
        cfg = self.cfg.get_section
        legend = ET.SubElement(self.nodes[realm], 'node', {
            'STYLE': "bubble",
            'TEXT': "LEGEND",
            'POSITION': "left"
            })
        for section in _SECTIONS:
            node = ET.SubElement(legend, 'node', {
                'BACKGROUND_COLOR': cfg(section)['bg-color'],
                'COLOR': cfg(section)['font-color'],
                'STYLE': "bubble",
                'TEXT': section
                })
            self._emit_notes(node, notes=[
                ('Description', cfg(section)['description']),
                ])


    def _emit_cim_profile(self, realm):
        """Emits mindmap cim profile.

        """
        cfg = self.cfg.get_section
        constraints = ET.SubElement(self.nodes[realm], 'node', {
            'STYLE': "bubble",
            'TEXT': "CIM v2 PROFILE",
            'POSITION': "left"
            })

        # Iterate each section within profile.
        for section, cim_type in _SECTIONS.iteritems():
            if cim_type not in CIM_PROFILE:
                continue

            node = ET.SubElement(constraints, 'node', {
                'BACKGROUND_COLOR': cfg(section)['bg-color'],
                'COLOR': cfg(section)['font-color'],
                'STYLE': "bubble",
                'TEXT': section
                })
            for name in CIM_PROFILE[cim_type]['include']:
                ET.SubElement(node, 'node', {
                    'BACKGROUND_COLOR': cfg(section)['bg-color'],
                    'COLOR': cfg(section)['font-color'],
                    'STYLE': "bubble",
                    'TEXT': name
                    })


def _get_notes(spec):
    """Returns notes to be appended to a mindmap node.

    """
    # EnumChoice: [
    #     ("Description", self.description.replace("&", "and")),
    #     ("Specialization ID", self.id.lower().replace(" ", "-").replace("_", "-"))
    # ],
    result = [
        ("Description", lambda i: None if i.description is None else i.description.replace("&", "and")),
        ("Specialization ID", lambda i: i.id)
    ]
    if isinstance(spec, DetailProperty):
        result += [
            ("Type", lambda i: i.typeof),
            ("Cardinality", lambda i: i.cardinality)
        ]
    elif isinstance(spec, SpecializationModule):
        result += [
            ("QC status", lambda i: i.qc_status),
            ("Contact", lambda i: i.contact),
            ("Authors", lambda i: i.authors),
            ("Contributors", lambda i: i.contributors)
        ]

    return result
