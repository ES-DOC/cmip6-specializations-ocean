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
CONTRIBUTORS = 'CMIP5 version +, Julie Dehayes (LOCEAN/IPSL), Steve Griffies (GFDL), Gokhan Danabasoglu (NCAR)'

# --------------------------------------------------------------------
# CHANGE HISTORY
#
# Set to list: (version, date, comment, who).
# --------------------------------------------------------------------
CHANGE_HISTORY = [
	("0.1.0", "2016-07-01", "Eric Guilyardi",
        "Initialised"),
	("0.2.0", "2016-08-30", "Eric Guilyardi",
        "Update science following inputs fron Gokhan Danabasoglu and Steve Griffies", ),
	("0.3.0", "2016-09-05", "David Hassell",
        "Added hidden CIM2 properties to key_properties and timestepping_framework", ),
	("0.4.0", "2016-11-08", "Eric Guilyardi et al.",
        "Changed syntax to simplify and remove CIM2 dependencies"),
    ]

# --------------------------------------------------------------------
# QUALITY CONTROL STATUS
#
# Set to 'draft' or 'complete'
# --------------------------------------------------------------------
QC_STATUS = 'draft'

# --------------------------------------------------------------------
# DESCRIPTION
#
# Short description of the specialization.
# --------------------------------------------------------------------
DESCRIPTION = 'Ocean Realm'

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
