"""A realm key-properties sepecialization.

For further information goto http://wordpress.es-doc.org/cmip6-model-specializations.

"""

# --------------------------------------------------------------------
# INTERNAL (do not change)
# --------------------------------------------------------------------
from collections import OrderedDict

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
AUTHORS = 'Eric Guilyardi'

# --------------------------------------------------------------------
# QUALITY CONTROL STATUS
#
# Set to 'draft' or 'complete'
# --------------------------------------------------------------------
QC_STATUS = 'draft'

# --------------------------------------------------------------------
# KEY PROPERTIES: DESCRIPTION
#
# Scientific context of the key properties
# --------------------------------------------------------------------
DESCRIPTION = 'Key properties of the ocean'

# --------------------------------------------------------------------
# KEY PROPERTIES: DETAILS
#
# Sets of details for the key properties
# --------------------------------------------------------------------
DETAILS = OrderedDict()

DETAILS['general'] = {
    'description': 'General key properties in ocean',
    'properties': [
        ('model_family', 'ENUM:model_family_types', '1.1',
            'Type of ocean model.'),
        ('basic_approximations', 'ENUM:ocean_basic_approx_types', '1.N',
            'Basic approximations made in the ocean.',),
        ('prognostic_variables', 'ENUM:prognostic_vars_types', '1.N',
            'List of prognostic variables in the ocean component.'),
        ]
}

DETAILS['seawater_properties'] = {
    'description': 'Physical properties of seawater in ocean',
    'properties' : [
        ('eos_type', 'ENUM:seawater_eos_types', '1.1',
            'Type of EOS for sea water'),
        ('eos_functional_temp', 'ENUM:seawater_eos_func_temp', '1.1',
            'Temperature used in EOS for sea water'),
        ('eos_functional_salt', 'ENUM:seawater_eos_func_salt', '1.1',
            'Salinity used in EOS for sea water'),
        ('eos_functional_depth', 'ENUM:seawater_eos_func_depth', '1.1',
            'Depth or pressure used in EOS for sea water ?'),
        ('ocean_freezing_point', 'ENUM:seawater_freezing_point', '1.1',
            'Equation used to compute the freezing point (in deg C) of seawater, as a function of salinity and pressure'),
        ('ocean_specific_heat', 'float', '1.1',
            'Specific heat in ocean (cpocean) in J/(kg K)'),
        ('ocean_reference_density', 'float', '1.1',
            'Boussinesq reference density (rhozero) in kg / m3'),
        ]
}

DETAILS['bathymetry'] = {
    'description': 'Properties of bathymetry in ocean',
    'properties' : [
        ('reference_dates', 'ENUM:bathymetry_ref_dates', '1.1',
            'Reference date of bathymetry'),
        ('type', 'bool', '1.1',
            'Is the bathymetry fixed in time in the ocean ?'),
        ('ocean_smoothing', 'str', '1.1',
            'Describe any smoothing or hand editing of bathymetry in ocean'),
        ('source', 'str', '1.1',
            'Describe source of bathymetry in ocean'),
        ]
}

DETAILS['nonoceanic_waters'] = {
    'description': 'Non oceanic waters treatement in ocean',
    'properties' :[
        ('isolated_seas','str', '0.1',
         'Describe if/how isolated seas is performed'),
        ('river_mouth','str', '0.1',
         'Describe if/how river mouth mixing or estuaries specific treatment is performed'),
       ]
}

# --------------------------------------------------------------------
# KEY PROPERTIES: EXTENT
#
# <DESCRIPTION NEEDED>
# --------------------------------------------------------------------
EXTENT = OrderedDict()

# --------------------------------------------------------------------
# KEY PROPERTIES: EXTENT DETAILS
#
# Sets of details for the extent.
# --------------------------------------------------------------------
EXTENT_DETAILS = OrderedDict()

# --------------------------------------------------------------------
# KEY PROPERTIES: RESOLUTION
#
# The resolution of the grid.
# --------------------------------------------------------------------
RESOLUTION = OrderedDict()

RESOLUTION['resolution'] = {
    'description': 'Resolution in the ocean grid',
    'details' : [
        'vertical_resolution',
        'horizontal_resolution',
        ],
}

# --------------------------------------------------------------------
# KEY PROPERTIES: RESOLUTION DETAILS
#
# Sets of details for the resolution
# --------------------------------------------------------------------
RESOLUTION_DETAILS = OrderedDict()

RESOLUTION_DETAILS['vertical_resolution'] = {
    'properties':[
        ('number_of_levels', 'int', '1.1',
            'Number of vertical levels'),
        ('thickness_level_1','float', '1.1',
            'Thickness of first surface ocean level (in meters)')
    ]
}

RESOLUTION_DETAILS['horizontal_resolution'] = {
    'properties':[
        ('number_of_xy_gridpoints', 'int', '1.1',
            'Total number of horizontal points on computational grid'),
    ]
}

# --------------------------------------------------------------------
# KEY PROPERTIES: TUNING APPLIED
#
# Any tuning used to optimise the parameters in this realm
# --------------------------------------------------------------------
TUNING_APPLIED = OrderedDict()

# --------------------------------------------------------------------
# KEY PROPERTIES: TUNING APPLIED DETAILS
#
# Sets of details for the tuning
# --------------------------------------------------------------------
TUNING_APPLIED_DETAILS = OrderedDict()

# --------------------------------------------------------------------
# KEY PROPERTIES: EXTRA CONSERVATION PROPERTIES
#
# Details of methodology needed to conserve variables between
# processes
# --------------------------------------------------------------------
EXTRA_CONSERVATION_PROPERTIES = OrderedDict()

EXTRA_CONSERVATION_PROPERTIES['conservation'] = {
    'description': 'Conservation in the ocean component',
    'details': ['details'],
}

# --------------------------------------------------------------------
# KEY PROPERTIES: EXTRA CONSERVATION PROPERTIES DETAILS
#
# Sets of details for the conservation
# --------------------------------------------------------------------
EXTRA_CONSERVATION_PROPERTIES_DETAILS = OrderedDict()

EXTRA_CONSERVATION_PROPERTIES_DETAILS['details'] = {
    'description': 'Properties conserved in the ocean component',
    'properties': [
        ('scheme', 'ENUM:conservation_props_types', '1.N',
            'Conservation scheme in ocean'),
        ('method', 'str', '1.1',
            'Describe how conservation properties are ensured in ocean'),
        ('consistency_properties', 'str','0.1',
            'Any additional consistency properties (energy conversion, pressure gradient discretisation, ...)?')
        ]
}

# --------------------------------------------------------------------
# KEY PROPERTIES: ENUMERATIONS
# --------------------------------------------------------------------
ENUMERATIONS = OrderedDict()

ENUMERATIONS['model_family_types'] = {
    'description': 'Types of ocean models',
    'is_open': True,
    'members': [
        ('OGCM', None),
        ('slab ocean', None),
        ('mixed layer ocean', None)
    ]
}

ENUMERATIONS['ocean_basic_approx_types'] = {
    'description': 'Types of basic approximation in ocean',
    'is_open': True,
    'members': [
        ('Primitive equations', None),
        ('Non-hydrostatic', None),
        ('Boussinesq', None)
    ]
}

ENUMERATIONS['prognostic_vars_types'] = {
    'description': 'Types of basic approximation in ocean',
    'is_open': True,
    'members': [
        ('Potential temperature', None),
        ('Conservative temperature', None),
        ('Salinity', None),
        ('U-velocity', None),
        ('V-velocity', None),
        ('W-velocity', None),
        ('SSH', 'Sea Surface Height')
    ]
}

ENUMERATIONS['seawater_eos_types'] = {
    'description': 'Types of seawater Equation of State in ocean',
    'is_open': True,
    'members': [
        ('Linear', None),
        ('Mc Dougall et al.', None),
        ('Jackett et al. 2006', None),
        ('TEOS 2010', None)
        ]
}

ENUMERATIONS['seawater_eos_func_temp'] = {
    'description': 'Types of temperature used in EOS in ocean',
    'is_open': False,
    'members': [
        ('Potential temperature', None),
        ('Conservative temperature', None),
        ]
}

ENUMERATIONS['seawater_eos_func_salt'] = {
    'description': 'Types of salinity used in EOS in ocean',
    'is_open': False,
    'members': [
        ('Practical salinity Sp', None),
        ('Absolute salinity Sa', None),
        ]
}

ENUMERATIONS['seawater_eos_func_depth'] = {
    'description': 'Types of depth used in EOS in ocean',
    'is_open': False,
    'members': [
        ('Pressure (dbars)', None),
        ('Depth (meters)', None),
        ]
}

ENUMERATIONS['seawater_freezing_point'] = {
    'description': 'Types of seawater freezing point equation in ocean',
    'is_open': True,
    'members': [
        ('TEOS 2010', None)
        ]
}

ENUMERATIONS['bathymetry_ref_dates'] = {
    'description': 'List of reference dates for bathymetry in ocean',
    'is_open': True,
    'members': [
        ('Present day', None),
        ('21000 years BP', None),
        ('6000 years BP', None),
        ('LGM', 'Last Glacial Maximum'),
        ('Pliocene', None)
        ]
}

ENUMERATIONS['conservation_props_types'] = {
    'description': 'Types of conservation properties in ocean',
    'is_open': True,
    'members': [
        ('Energy', None),
        ('Enstrophy', None),
        ('Salt', None),
        ('Volume of ocean', None),
        ('Momentum', None)
        ]
}
