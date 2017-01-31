#
# Ids of ocean properties for short model table description in papers (WGCM request)
#
#

# --------------------------------------------------------------------
# CONTACT: Set to realm specialization co-ordinator.
# --------------------------------------------------------------------
CONTACT = 'Eric Guilyardi'

# --------------------------------------------------------------------
# AUTHORS: Set to realm specialization authors (comma delimited).
# --------------------------------------------------------------------
AUTHORS = 'Eric Guilyardi'

# --------------------------------------------------------------------
# CONTRIBUTORS: Set to realm specialization contributors (comma delimited).
# --------------------------------------------------------------------
CONTRIBUTORS = 'Julie Dehayes (LOCEAN/IPSL), Steve Griffies (GFDL), Gokhan Danabasoglu (NCAR)'

# --------------------------------------------------------------------
# QUALITY CONTROL STATUS: Set to 'draft' or 'complete'
# --------------------------------------------------------------------
QC_STATUS = 'draft'

# --------------------------------------------------------------------
# CHANGE HISTORY: Set to list: (version, date, comment, who).
# --------------------------------------------------------------------
CHANGE_HISTORY = [
    ("0.1.0", "2017-01-13", "Eric Guilyardi",  "Initialised"),
    ]

# Short table properties

short_table_properties =[
    # Priority 1
    'cmip6.ocean.key_properties.model_name',
    'cmip6.ocean.key_properties.basic_approximations',
    'cmip6.ocean.key_properties.conservation.scheme',
    'cmip6.ocean.key_properties.resolution.name',
    'cmip6.ocean.key_properties.resolution.canonical_horizontal_resolution',
    'cmip6.ocean.key_properties.resolution.number_of_vertical_levels',
    'cmip6.ocean.grid.discretisation.horizontal.type',
    'cmip6.ocean.grid.discretisation.vertical.coordinates',
    'cmip6.ocean.timestepping_framework.timestepping_attributes.time_step',
    'cmip6.ocean.lateral_physics.scheme',
    'cmip6.ocean.lateral_physics.momentum.operator.direction',
    'cmip6.ocean.lateral_physics.tracers.operator.direction',
    'cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.type',
    'cmip6.ocean.vertical_physics.interior_mixing.tracers.type',
    # Priority 2
    'cmip6.ocean.advection.lateral_tracers.type',
    'cmip6.ocean.timestepping_framework.timestepping_attributes.diurnal_cycle',
    'cmip6.ocean.uplow_boundaries.free_surface.scheme',
    'cmip6.ocean.uplow_boundaries.bottom_boundary_layer.type_of_bbl',
    'cmip6.ocean.boundary_forcing.momentum_flux_correction',
    'cmip6.ocean.boundary_forcing.tracers_flux_correction',
    '',
]
