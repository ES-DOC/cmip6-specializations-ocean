"""
.. module:: __main__.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: CMIP6 specialization validator.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import argparse
import os

import xml.etree.ElementTree as ET

from model import Realm
from generator import Generator
from utils import get_specializations



# Set directory from which module is being run.
_DIR = os.path.dirname(__file__)

# Set command line arguments.
_ARGS = argparse.ArgumentParser("Validates a set of CMIP6 specializations.")
_ARGS.add_argument(
    "--dest",
    help="Path to a directory into which xmind defintions will be written.",
    dest="dest",
    type=str,
    default=os.path.dirname(_DIR)
    )
_ARGS.add_argument(
    "--realm",
    help="Name of realm being validated.",
    dest="realm",
    type=str,
    default=os.path.dirname(_DIR).split("-")[-1]
    )
_ARGS.add_argument(
    "--input",
    help="Path to a directory in which specializations reside.",
    dest="input_dir",
    type=str,
    default=os.path.dirname(_DIR)
    )
_ARGS.add_argument(
    "--stylesheet",
    help="Path to a spreadsheet configuration file.",
    dest="stylesheet",
    type=str,
    default=os.path.join(_DIR, "stylesheet.conf")
    )
_ARGS = _ARGS.parse_args()

# Derive specialization modules.
# mod, grid, key_properties, processes = get_specializations(input_dir, realm_name)

# Set realm wrapper.
realm = Realm(_ARGS.input_dir, _ARGS.realm)

# Run generator.
generator = Generator(realm, _ARGS.stylesheet)
generator.run()

# Write mindmap.
fpath = os.path.join(_ARGS.dest, "{}.mm".format(_ARGS.realm))
with open(fpath, 'w') as fstream:
    fstream.write(ET.tostring(generator.mmap))
