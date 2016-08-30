"""A realm sepecialization.

For further information goto http://wordpress.es-doc.org/cmip6-model-specializations.

"""

# --------------------------------------------------------------------
# CONTACT
#
# Set to realm specialization co-ordinator.
# --------------------------------------------------------------------
CONTACT = 'Eric Guilyardi'

# --------------------------------------------------------------------
# AUTHORS
#
# Set to realm specialization authors (comma delimited).
# --------------------------------------------------------------------
AUTHORS = 'Eric Guilyardi, David Hassell, Mark Greenslade'

# --------------------------------------------------------------------
# CONTRIBUTORS
#
# Set to realm specialization contributors (comma delimited).
# --------------------------------------------------------------------
CONTRIBUTORS = 'CMIP5 version +, Julie Dehayes, Steve Griffies, Gokhan Danabasoglu'

# --------------------------------------------------------------------
# CHANGE HISTORY
#
# Set to list: (version, date, comment, who).
# --------------------------------------------------------------------
CHANGE_HISTORY = [
	("0.1.0", "2016-07-01", "Initialised", "Eric Guilyardi"),
	("0.2.0", "2016-08-30", "Update science following inputs fron Gokhan Danabasoglu and Steve Griffies", "Eric Guilyardi"),
     ]

# --------------------------------------------------------------------
# QUALITY CONTROL STATUS
#
# Set to 'draft' or 'complete'
# --------------------------------------------------------------------
QC_STATUS = 'draft'

# --------------------------------------------------------------------
# REALM: DESCRIPTION
#
# Scientific context of this scientific realm
# --------------------------------------------------------------------
DESCRIPTION = 'Ocean realm specialization'

# --------------------------------------------------------------------
# REALM: REALM
#
# Canonical name for the domain of this scientific realm
# --------------------------------------------------------------------
REALM = 'ocean'

# --------------------------------------------------------------------
# REALM: GRID
#
# The grid used to layout the variables
# --------------------------------------------------------------------
GRID = 'ocean_grid'

# --------------------------------------------------------------------
# REALM: KEY PROPERTIES
#
# Key properties for the domain which differ from model defaults
# (grid, timestep etc)
# --------------------------------------------------------------------
KEY_PROPERTIES = 'ocean_key_properties'

# --------------------------------------------------------------------
# REALM: PROCESSES
#
# Processes simulated within the realm
# --------------------------------------------------------------------
PROCESSES = [
    'ocean_timestepping_framework',
    'ocean_advection',
    'ocean_lateral_physics',
    'ocean_vertical_physics',
    'ocean_uplow_boundaries',
    'ocean_boundary_forcing',
    ]
