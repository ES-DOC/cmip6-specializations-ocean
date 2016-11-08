"""A realm process sepecialization.

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
# PROCESS: DESCRIPTION
#
# Scientific context of the process
# --------------------------------------------------------------------
DETAILS = OrderedDict()

# Inherited from the CIM class - DO NOT CHANGE
DETAILS['cim'] ={
    'description': 'Key properties of the ocean boundary forcing',
    'properties':[
        ('implementation_overview','str', '1.1',
        "General overview description of the implementation of this part of the process."),
        ('keywords','str', '0.N', "keywords to help re-use and discovery of this information."),
        ('citations','shared.citation', '0.N', "Set of pertinent citations."),
    ]
}

# --------------------------------------------------------------------
# PROCESS: DETAILS
#
# Sets of details for the process
# --------------------------------------------------------------------

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
    'detail_sets': [
        'bottom_friction',
        'lateral_friction'
        ]
}

SUB_PROCESSES['tracers'] = {
    'description': 'Key properties of tracer boundary forcing in the ocean',
    'detail_sets': [
        'sunlight_penetration',
        'fresh_water_forcing',
        ]
}

# --------------------------------------------------------------------
# PROCESS: SUB PROCESSES: DETAILS
#
# Sets of details for the sub processes
# --------------------------------------------------------------------

SUB_PROCESSES['momentum:bottom_friction'] = {
    'description': 'Properties of momentum bottom friction in ocean',
    'properties': [
        ('type', 'ENUM:mom_bottom_friction_types', '1.1',
            'Type of momentum bottom friction in ocean'),
        ]
}

SUB_PROCESSES['momentum:lateral_friction'] = {
   'description': 'Properties of momentum lateral friction in ocean',
    'properties': [
        ('type', 'ENUM:mom_lateral_friction_types', '1.1',
            'Type of momentum lateral friction in ocean'),
        ]
}

SUB_PROCESSES['tracers:sunlight_penetration'] = {
    'description': 'Properties of sunlight penetration scheme in ocean',
    'properties': [
         ('scheme', 'ENUM:sunlight_penetration_scheme_types', '1.1',
            'Type of sunlight penetration scheme in ocean'),
         ('ocean_colour', 'bool', '1.1',
            'Is the ocean sunlight penetration scheme ocean colour dependent ?'),
         ('extinction_depth', 'str', '0.1',
            'Describe and list extinctions depths for sunlight penetration scheme (if applicable).'),
        ]
}

SUB_PROCESSES['tracers:fresh_water_forcing'] = {
    'description': 'Properties of surface fresh water forcing in ocean',
    'properties': [
        ('from_atmopshere', 'ENUM:surface_fresh_water_forcing_atmos_types', '1.1',
            'Type of surface fresh water forcing from atmos in ocean'),
        ('from_sea_ice', 'ENUM:surface_fresh_water_forcing_seaice_types', '1.1',
            'Type of surface fresh water forcing from sea-ice in ocean'),
        ('forced_mode_restoring', 'str', '1.1',
            'Type of surface salinity restoring in forced mode (OMIP)'),
        ]
}


# --------------------------------------------------------------------
# ENUMERATIONS
# --------------------------------------------------------------------
ENUMERATIONS = OrderedDict()

ENUMERATIONS['mom_bottom_friction_types'] = {
    'description': 'Type of momentum bottom friction in ocean',
    'is_open': True,
    'members': [
        ('Linear', None),
        ('Non-linear', None),
        ('Non-linear (drag function of speed of tides)', None),
        ('Constant drag coefficient', None),
        ('None', None),
        ]
}

ENUMERATIONS['mom_lateral_friction_types'] = {
    'description': 'Type of momentum lateral friction in ocean',
    'is_open': True,
    'members': [
        ('None', None),
        ('Free-slip', None),
        ('No-slip', None),
        ]
}

ENUMERATIONS['sunlight_penetration_scheme_types'] = {
    'description': 'Type of sunlight penetration scheme in ocean',
    'is_open': True,
    'members': [
        ('1 extinction depth', None),
        ('2 extinction depth', None),
        ('3 extinction depth', None),
        ]
}

ENUMERATIONS['surface_fresh_water_forcing_atmos_types'] = {
    'description': 'Types of surface fresh water forcing from atmosphere in ocean',
    'is_open': True,
    'members': [
        ('Freshwater flux', None),
        ('Virtual salt flux', None),
        ]
}

ENUMERATIONS['surface_fresh_water_forcing_seaice_types'] = {
    'description': 'Types of surface fresh water forcing from sea-ice in ocean',
    'is_open': True,
    'members': [
        ('Freshwater flux', None),
        ('Virtual salt flux', None),
        ('Real salt flux', None),
        ]
}
