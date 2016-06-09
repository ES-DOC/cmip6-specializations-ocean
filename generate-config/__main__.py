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

from generator import Generator
from utils import get_specializations
from utils_model import Realm



# Set directory from which module is being run.
_DIR = os.path.dirname(__file__)

# Set command line arguments.
_ARGS = argparse.ArgumentParser("Generates a CMIP6 realm config file for input into a 3rd party system.")
_ARGS.add_argument(
    "--dest",
    help="Path to a directory into which realm config file will be written.",
    dest="dest",
    type=str,
    default=os.path.dirname(_DIR)
    )
_ARGS.add_argument(
    "--realm",
    help="Name of realm being processed.",
    dest="realm",
    type=str,
    default=os.path.dirname(_DIR).split("-")[-1]
    )
_ARGS.add_argument(
    "--input",
    help="Path to a directory in which realm specializations reside.",
    dest="input_dir",
    type=str,
    default=os.path.dirname(_DIR)
    )
_ARGS = _ARGS.parse_args()

# Set realm wrapper.
realm = Realm(get_specializations(_ARGS.input_dir, _ARGS.realm))

# Run generator.
generator = Generator(realm)
generator.run()

# Write mindmap.
fpath = os.path.join(_ARGS.dest, "{}.json".format(_ARGS.realm))
with open(fpath, 'w') as fstream:
    fstream.write(generator.output)
