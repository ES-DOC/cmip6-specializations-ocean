"""A realm process sepecialization.

For further information goto http://wordpress.es-doc.org/cmip6-model-specializations.

"""
# --------------------------------------------------------------------
# INTERNAL (do not change)
# --------------------------------------------------------------------
from collections import OrderedDict

DETAILS = OrderedDict()
SUB_PROCESSES = OrderedDict()
ENUMERATIONS = OrderedDict()

# Default process details pulled from CIM.
DETAILS['CIM'] = {
    'description': 'Key properties of the ocean advection',
    'properties':[
        ('citations','shared.citation', '0.N',
            "Set of pertinent citations."),
        ('keywords','str', '0.N',
            "Keywords to help re-use and discovery of this information."),
        ('overview','str', '1.1',
            "General implementation overview."),
        ('responsibile_parties','shared.responsibility', '0.N',
            "Set of parties responsible for providing this information."),
    ]
}

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
# DESCRIPTION
#
# Short description of the specialization.
# --------------------------------------------------------------------
DESCRIPTION = 'Ocean Vertical Physics'

# --------------------------------------------------------------------
# SUB-PROCESS: Boundary Layer Mixing.
# --------------------------------------------------------------------
SUB_PROCESSES['boundary_layer_mixing'] = {
    'description': 'Properties of boundary layer mixing in the ocean (aka mixed layer)',
    'properties': [],
    'detail_sets': [
        'details',
        'tracers',
        'momentum'
        ]
    }

SUB_PROCESSES['boundary_layer_mixing:details'] = {
    'description': 'Properties of vertical physics in ocean',
    'properties': [
        ('langmuir_cells_mixing', 'bool', '1.1',
            'Is there Langmuir cells mixing in upper ocean ?'),
        ]
    }

SUB_PROCESSES['boundary_layer_mixing:tracers'] = {
    'description': 'Properties of boundary layer (BL) mixing on tracers in the ocean ',
    'properties': [
        ('type', 'ENUM:bndlayer_mixing_types', '1.1',
            'Type of boundary layer mixing for tracers in ocean'),
        ('closure_order', 'float', '0.1',
            'If turbulent BL mixing of tracers, specific order of closure (0, 1, 2.5, 3)'),
        ('constant', 'int', '0.1',
            'If constant BL mixing of tracers, specific coefficient (m2/s)'),
        ('background', 'str', '1.1',
            'Background BL mixing of tracers coefficient, (schema and value in m2/s - may by none)'),
        ]
    }

SUB_PROCESSES['boundary_layer_mixing:momentum'] = {
    'description': 'Properties of boundary layer (BL) mixing on momentum in the ocean ',
    'properties': [
        ('type', 'ENUM:bndlayer_mixing_types', '1.1',
            'Type of boundary layer mixing for momentum in ocean'),
        ('closure_order', 'float', '0.1',
            'If turbulent BL mixing of momentum, specific order of closure (0, 1, 2.5, 3)'),
        ('constant', 'int', '0.1',
            'If constant BL mixing of momentum, specific coefficient (m2/s)'),
        ('background', 'str', '1.1',
            'Background BL mixing of momentum coefficient, (schema and value in m2/s - may by none)'),

        ]
    }

# --------------------------------------------------------------------
# SUB-PROCESS: Interior Layer Mixing.
# --------------------------------------------------------------------
SUB_PROCESSES['interior_mixing'] = {
    'description': 'Properties of interior vertical mixing in the ocean',
    'properties': [],
    'detail_sets': [
        'details',
        'tracers',
        'momentum'
        ]
    }

SUB_PROCESSES['interior_mixing:details'] = {
    'description': 'Properties of interior mixing in the ocean ',
    'properties': [
        ('convection_type', 'ENUM:vertphys_convection_types', '1.1',
            'Type of vertical convection in ocean'),
        ('tide_induced_mixing', 'str', '1.1',
            'Describe how tide induced mixing is modelled (barotropic, baroclinic, none)'),
        ('double_diffusion', 'bool', '1.1',
            'Is there double diffusion'),
        ('shear_mixing', 'bool', '1.1',
            'Is there interior shear mixing'),
        ]
    }

SUB_PROCESSES['interior_mixing:tracers'] = {
    'description': 'Properties of interior mixing on tracers in the ocean ',
    'properties': [
        ('type', 'ENUM:interior_mixing_types', '1.1',
         'Type of interior mixing for tracers in ocean'),
        ('constant', 'int', '0.1',
            'If constant interior mixing of tracers, specific coefficient (m2/s)'),
        ('profile', 'str', '1.1',
            'Is the background interior mixing using a vertical profile for tracers (i.e is NOT constant) ?'),
        ('background', 'str', '1.1',
            'Background interior mixing of tracers coefficient, (schema and value in m2/s - may by none)'),
        ]
    }

SUB_PROCESSES['interior_mixing:momentum'] = {
    'description': 'Properties of interior mixing on momentum in the ocean ',
    'properties': [
        ('type', 'ENUM:interior_mixing_types', '1.1',
         'Type of interior mixing for momentum in ocean'),
        ('constant', 'int', '0.1',
            'If constant interior mixing of momentum, specific coefficient (m2/s)'),
        ('profile', 'str', '1.1',
            'Is the background interior mixing using a vertical profile for momentum (i.e is NOT constant) ?'),
        ('background', 'str', '1.1',
            'Background interior mixing of momentum coefficient, (schema and value in m2/s - may by none)'),
        ]
    }

# --------------------------------------------------------------------
# ENUMERATIONS
# --------------------------------------------------------------------
ENUMERATIONS['vertphys_convection_types'] = {
    'description': 'Types of convection scheme in ocean',
    'is_open': True,
    'members': [
        ('Non-penetrative convective adjustment', None),
        ('Enhanced vertical diffusion', None),
        ('Included in turbulence closure', None)
        ]
    }

ENUMERATIONS['bndlayer_mixing_types'] = {
    'description': 'Types of boundary layer mixing in ocean',
    'is_open': True,
    'members': [
        ('Constant value', None),
        ('Turbulent closure - TKE', None),
        ('Turbulent closure - KPP', None),
        ('Turbulent closure - Mellor-Yamada', None),
        ('Turbulent closure - Bulk Mixed Layer', None),
        ('Richardson number dependent - PP', None),
        ('Richardson number dependent - KT', None),
        ('Imbeded as isopycnic vertical coordinate', None)
        ]
    }

ENUMERATIONS['interior_mixing_types'] = {
    'description': 'Types of interior mixing in ocean',
    'is_open': True,
    'members': [
        ('Constant value', None),
        ('Turbulent closure / TKE', None),
        ('Turbulent closure - Mellor-Yamada', None),
        ('Richardson number dependent - PP', None),
        ('Richardson number dependent - KT', None),
        ('Imbeded as isopycnic vertical coordinate', None)
        ]
    }
