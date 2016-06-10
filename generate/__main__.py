"""
.. module:: __main__.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: CMIP6 specialization validator.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import argparse
import os

from generator_mm import Generator as MindmapGenerator
from generator_json import Generator as JsonGenerator
from utils import get_specializations
from utils_model import Realm



# Map of generators to encodings.
_GENERATORS = {
    'mm': MindmapGenerator,
    'json': JsonGenerator
}

# Set directory from which module is being run.
_DIR = os.path.dirname(__file__)

# Set command line arguments.
_ARGS = argparse.ArgumentParser("Encodes CMIP6 realm specializations.")
_ARGS.add_argument(
    "--encoding",
    help="Type of file to be outputted.",
    dest="encoding",
    type=str,
    default="mm"
    )
_ARGS.add_argument(
    "-o", "--output-dir",
    help="Path to a directory into which generated content will be written.",
    dest="output_dir",
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

# Set realm.
realm = Realm(get_specializations(_ARGS.input_dir, _ARGS.realm))

# Run generator.
generator = _GENERATORS[_ARGS.encoding](realm)
generator.run()

# # Write output.
fpath = os.path.join(_ARGS.output_dir, "{}.{}".format(_ARGS.realm, _ARGS.encoding))
with open(fpath, 'w') as fstream:
    fstream.write(generator.output)
