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
DESCRIPTION = 'Characteristics of ocean time stepping framework'

IMPLEMENTATION_OVERVIEW = ('str', '1.1', "General overview description of the implementation of this part of the process.")

KEYWORDS = ('str', '0.1', "keywords to help re-use and discovery of this information.")

CITATIONS = ('shared.citation', '0.N', "Set of pertinent citations.")

# --------------------------------------------------------------------
# PROCESS: DETAILS
#
# Sets of details for the process
# --------------------------------------------------------------------
DETAILS = OrderedDict()

DETAILS['timestepping_attributes'] = {
    'description': 'Properties of time stepping in ocean',
    'properties': [
        ('time_step', 'int', '1.1',
            'Ocean time step in seconds'),
        ('diurnal_cycle', 'ENUM:diurnal_cycle_types', '1.1',
            'Diurnal cycle type'),
    ]
}

# This is the compact notation used of only one property
DETAILS['timestepping_tracers_scheme'] = {
    'description': 'Properties of tracers time stepping in ocean',
    'properties': [
        ('tracers', 'ENUM:ocean_timestepping_types', '1.1',
            'Time stepping tracer scheme')
    ]
}

DETAILS['barotropic_solver_scheme'] = {
    'description': 'Barotropic solver in ocean',
    'properties': [
        ('barotropic_solver', 'ENUM:ocean_timestepping_types', '1.1',
            'Barotropic solver scheme'),
        ('type', 'ENUM:barotropic_solver_types', '1.1',
            'Barotropic solver type')
    ]
}
DETAILS['barotropic_momentum_scheme'] = {
    'description': 'Barotropic momentum solver in ocean',
    'properties': [
        ('barotropic_momentum', 'ENUM:ocean_timestepping_types', '1.1',
            'Barotropic momentum scheme')
    ]
}

# --------------------------------------------------------------------
# PROCESS: SUB PROCESSES
#
# Sets of discrete portions of the process. Each sub-process needsa
# <name> and <description>
# --------------------------------------------------------------------
SUB_PROCESSES = OrderedDict()

#SUB_PROCESSES[<name>] = {
#    'description': <description>
#    'properties': [
#        ('implementation_overview', 'str', '1.1',
#             "General overview description of the implementation of this part of the process."),
#        ('citations', 'shared.citation', '0.N',
#             "Set of pertinent citations."), 
#    ],
#    # Extra properties
#    'details': [],
#}


# --------------------------------------------------------------------
# PROCESS: SUB PROCESSES: DETAILS
#
# Sets of details for the sub processes
# --------------------------------------------------------------------
SUB_PROCESSES_DETAILS = OrderedDict()

# --------------------------------------------------------------------
# ENUMERATIONS
# --------------------------------------------------------------------
ENUMERATIONS = OrderedDict()

ENUMERATIONS['diurnal_cycle_types'] = {
    'description': 'Types of diurnal cycle resolution in ocean',
    'is_open': True,
    'members': [
        ('None', 'No diurnal cycle in ocean'),
        ('Via coupling', 'Diurnal cycle via coupling frequency'),
        ('Specific treatment', 'Specific treament'),
        ]
}

ENUMERATIONS['ocean_timestepping_types'] = {
    'description': 'Type of timestepping scheme in ocean',
    'is_open': True,
    'members': [
        ('Leap-frog + Asselin filter', 'Leap-frog scheme with Asselin filter'),
        ('Leap-frog + Periodic Euler backward solver', 'Leap-frog scheme with Periodic Euler backward solver'),
        ('Predictor-corrector', 'Predictor-corrector scheme'),
        ('AM3-LF (ROMS)', 'AM3-LF used in ROMS'),
        ('Forward-backward', 'Forward-backward scheme'),
        ('Forward operator', 'Forward operator scheme')
        ]
}

ENUMERATIONS['barotropic_solver_types'] = {
    'description': 'Type of barotropic solver in ocean',
    'is_open': True,
    'members': [
        ('Preconditioned conjugate gradient', None),
        ('Sub cyling', None),
        ]
}
