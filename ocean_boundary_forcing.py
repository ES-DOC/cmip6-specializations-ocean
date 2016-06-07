CONTACT = 'Eric Guilyardi'

AUTHORS = 'Eric Guilyardi'

# --------------------------------------------------------------------
# QUALITY CONTROL STATUS
#
# Set to 'draft' or 'complete'
# --------------------------------------------------------------------
QC_STATUS = 'draft'

# --------------------------------------------------------------------
# PROCESS IDENTIFIER
#
# Set to 'cmip6.<REALM>.<PROCESS>
# --------------------------------------------------------------------
ID = 'cmip6.ocean.boundary_forcing'

# --------------------------------------------------------------------
# INTERNAL VARIABLES (do not change)
# --------------------------------------------------------------------
_TYPE = 'cim.2.science.process'

from collections import OrderedDict

# --------------------------------------------------------------------
# PROCESS: DESCRIPTION
#
# Scientific context of the process
# --------------------------------------------------------------------
DESCRIPTION = 'Properties of boundary forcing within the ocean component'

# --------------------------------------------------------------------
# PROCESS: DETAILS
#
# Sets of details for the process
# --------------------------------------------------------------------
DETAILS = OrderedDict()


DETAILS['boundary_forcing_details'] = {
    'description': 'Properties of boundary forcing',
    'properties': [
        ('surface_pressure', 'str', '1.1',
            'Describe how surface pressure is transmitted to ocean (via sea-ice, nothing specific,...)'),
        ('momentum_flux_correction', 'str', '0.1',
            'Describe any type of ocean surface momentum flux correction and, if applicable, how it is applied and where.'),
        ('tracers_flux_correction', 'str', '0.1',
            'Describe any type of ocean surface tracers flux correction and, if applicable, how it is applied and where.'),
        ('wave_effects', 'str', '1.1',
            'Describe if/how wave effects are modelled at ocean surface.'),
        ('river_runoff_budget', 'str', '1.1',
            'Describe how river runoff from land surface is routed to ocean and any global adjustment done.'),
        ('geothermal_heating', 'str', '1.1',
            'Describe if/how geothermal heating is present at ocean bottom.'),
    ]
}

# --------------------------------------------------------------------
# PROCESS: SUB PROCESSES
#
# Sets of discrete portions of the process
# --------------------------------------------------------------------
SUB_PROCESSES = OrderedDict()

SUB_PROCESSES['momentum'] = {
    'description': 'Key properties of momentum boundary forcing in the ocean',
    'details': ['momentum_bottom_friction',
                'momentum_lateral_friction'],
}

SUB_PROCESSES['tracer'] = {
    'description': 'Key properties of tracer boundary forcing in the ocean',
    'details': ['tracers_sunlight_penetration',
                'tracers_surface_salinity_atmos',
                'tracers_surface_salinity_seaice',],
}


# --------------------------------------------------------------------
# PROCESS: SUB PROCESSES: DETAILS
#
# Sets of details for the sub processes
# --------------------------------------------------------------------
SUB_PROCESS_DETAILS = OrderedDict()

SUB_PROCESS_DETAILS['momentum_bottom_friction'] = {
    'description': 'Properties of momentum bottom friction in ocean',
    'properties': [
        ('type', 'ENUM:mom_bottom_friction_types', '1.1',
         'Type of momentum bottom friction in ocean'),
        ]
}

SUB_PROCESS_DETAILS['momentum_lateral_friction'] = {
   'description': 'Properties of momentum lateral friction in ocean',
    'properties': [
        ('type', 'ENUM:mom_lateral_friction_types', '1.1',
         'Type of momentum lateral friction in ocean'),
        ]
}

SUB_PROCESS_DETAILS['tracers_sunlight_penetration'] = {
    'description': 'Properties of sunlight penetration scheme in ocean',
    'properties': [
         ('scheme', 'ENUM:sunlight_penetration_scheme_types', '1.1',
          'Type of sunlight penetration scheme in ocean'),
         ('tracers_sun_ocean_colour', 'bool','1.1',
          'Is the ocean sunlight penetration scheme ocean colour dependent ?'),
         ('tracers_sun_extinct_depth', 'str','0.1',
          'Describe and list extinctions depths for sunlight penetration scheme (if applicable).'),
        ]
}

SUB_PROCESS_DETAILS['tracers_surface_salinity_atmos'] = {
    'description': 'Properties of surface salinity forcing from atmos in ocean',
    'properties': [
        ('scheme', 'ENUM:surface_salinity_forcing_types', '1.1',
         'Type of surface salinity forcing from atmos in ocean'),
        ]
}

SUB_PROCESS_DETAILS['tracers_surface_salinity_seaice'] = {
    'description': 'Properties of surface salinity forcing from sea ice in ocean',
    'properties': [
        ('scheme', 'ENUM:surface_salinity_forcing_types', '1.1',
         'Type of surface salinity forcing from sea ice in ocean'),
        ]
}

# --------------------------------------------------------------------
# ENUMERATIONS
# --------------------------------------------------------------------
ENUMERATIONS = OrderedDict()

ENUMERATIONS['mom_bottom_friction_types'] = {
    'description': 'Type of momentum bottom friction in ocean',
    'members': [
        ('Linear', 'tbd'),
        ('Non-linear', 'tbd'),
        ('Non-linear (drag function of speed of tides)', 'tbd'),
        ('Constant drag coefficient', 'tbd'),
        ('None', 'tbd'),
        ('Other', 'tbd'),
        ]
}

ENUMERATIONS['mom_lateral_friction_types'] = {
    'description': 'Type of momentum lateral friction in ocean',
    'members': [
        ('None', 'tbd'),
        ('Free-slip', 'tbd'),
        ('No-slip', 'tbd'),
        ('Other', 'tbd'),
        ]
}

ENUMERATIONS['sunlight_penetration_scheme_types'] = {
    'description': 'Type of sunlight penetration scheme in ocean',
    'members': [
        ('1 extinction depth', 'tbd'),
        ('2 extinction depth', 'tbd'),
        ('3 extinction depth', 'tbd'),
        ('Other', 'tbd'),
        ]
}

ENUMERATIONS['surface_salinity_forcing_types'] = {
    'description': 'ype of surface salinity forcing in ocean',
    'members': [
        ('Freshwater flux', 'tbd'),
        ('Virtual salt flux', 'tbd'),
        ('Other', 'tbd'),
        ]
}
