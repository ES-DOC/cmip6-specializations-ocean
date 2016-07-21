# -*- coding: utf-8 -*-

"""
.. module:: generate_typeset.py
   :platform: Unix, Windows
   :synopsis: Generates a specialisation typeset for use in downstream tools.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from tornado.template import Template


from utils_parser import Parser



class Generator(Parser):
    """Specialization to typeset generator.

    """
    @property
    def output(self):
        """Returns generated output as a text blob.

        """
        fpath = "{}.tornado".format(__file__.split(".")[0])
        with open(fpath, 'r') as fstream:
            template = Template(fstream.read())

        return template.generate(
            r=self.realm,
            escape=lambda s: s.strip().replace('"', "'")
            ).replace("#\n", "") \
             .replace("#\t\n", "") \
             .replace("#\t\t\n", "") \
             .replace("#\t\t\t\n", "") \
             .replace("#\t\t\t\t\n", "") \
             .replace("\t", "    ")


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        realm.py_cls_name = to_camel_case(realm.name)


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        process.py_cls_name = "_{}".format(to_camel_case(process.name))


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        subprocess.py_cls_name = "_{}".format(to_camel_case(subprocess.name))


    def on_detail_parse(self, owner, detail):
        """On detail parse event handler.

        """
        detail.py_cls_name = "_{}".format(to_camel_case(detail.name))


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