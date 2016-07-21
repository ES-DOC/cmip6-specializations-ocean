
class Ocean(object):
    """Ocean modelling realm.

    """
    def __init__(self):
        """Instance constructor.

        """
        self.advection = Ocean._Advection()
        self.boundary_forcing = Ocean._BoundaryForcing()
        self.lateral_physics = Ocean._LateralPhysics()
        self.timestepping_framework = Ocean._TimesteppingFramework()
        self.uplow_boundaries = Ocean._UplowBoundaries()
        self.vertical_physics = Ocean._VerticalPhysics()


    class _Advection(object):
        """Process: Ocean - advection.

        """
        def __init__(self):
            """Instance constructor.

            """
            self.momemtum_adv_scheme = Ocean._Advection._MomemtumAdvScheme()
            self.lat_tra_adv_scheme = Ocean._Advection._LatTraAdvScheme()
            self.vert_tra_adv_scheme = Ocean._Advection._VertTraAdvScheme()


        class _MomemtumAdvScheme(object):
            """Sub-process: momemtum_adv_scheme.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.details = Ocean._Advection._MomemtumAdvScheme._Details()


            class _Details(object):
                """Detail: details.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.mom_adv_scheme_name = None
                    self.mom_adv_ALE = None


        class _LatTraAdvScheme(object):
            """Sub-process: lat_tra_adv_scheme.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.details = Ocean._Advection._LatTraAdvScheme._Details()


            class _Details(object):
                """Detail: details.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.flux_limiter = None


        class _VertTraAdvScheme(object):
            """Sub-process: vert_tra_adv_scheme.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.details = Ocean._Advection._VertTraAdvScheme._Details()


            class _Details(object):
                """Detail: details.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.flux_limiter = None


    class _BoundaryForcing(object):
        """Process: Ocean - boundary_forcing.

        """
        def __init__(self):
            """Instance constructor.

            """
            self.momentum = Ocean._BoundaryForcing._Momentum()
            self.tracers = Ocean._BoundaryForcing._Tracers()


        class _Momentum(object):
            """Sub-process: momentum.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.bottom_friction = Ocean._BoundaryForcing._Momentum._BottomFriction()
                self.lateral_friction = Ocean._BoundaryForcing._Momentum._LateralFriction()


            class _BottomFriction(object):
                """Detail: bottom_friction.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None


            class _LateralFriction(object):
                """Detail: lateral_friction.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None


        class _Tracers(object):
            """Sub-process: tracers.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.sunlight_penetration = Ocean._BoundaryForcing._Tracers._SunlightPenetration()
                self.surface_salinity_atmos = Ocean._BoundaryForcing._Tracers._SurfaceSalinityAtmos()
                self.surface_salinity_seaice = Ocean._BoundaryForcing._Tracers._SurfaceSalinitySeaice()


            class _SunlightPenetration(object):
                """Detail: sunlight_penetration.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.scheme = None
                    self.tracers_sun_ocean_colour = None
                    self.tracers_sun_extinct_depth = None


            class _SurfaceSalinityAtmos(object):
                """Detail: surface_salinity_atmos.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.scheme = None


            class _SurfaceSalinitySeaice(object):
                """Detail: surface_salinity_seaice.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.scheme = None


    class _LateralPhysics(object):
        """Process: Ocean - lateral_physics.

        """
        def __init__(self):
            """Instance constructor.

            """
            self.momentum = Ocean._LateralPhysics._Momentum()
            self.tracers = Ocean._LateralPhysics._Tracers()


        class _Momentum(object):
            """Sub-process: momentum.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.operator = Ocean._LateralPhysics._Momentum._Operator()
                self.eddy_viscosity_coeff = Ocean._LateralPhysics._Momentum._EddyViscosityCoeff()


            class _Operator(object):
                """Detail: operator.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.direction = None
                    self.order = None
                    self.discretisation = None


            class _EddyViscosityCoeff(object):
                """Detail: eddy_viscosity_coeff.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.eddy_visc_coeff_cst = None
                    self.eddy_visc_coeff_var = None
                    self.eddy_visc_coeff_background = None
                    self.eddy_visc_coeff_backscatter = None


        class _Tracers(object):
            """Sub-process: tracers.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.details = Ocean._LateralPhysics._Tracers._Details()
                self.operator = Ocean._LateralPhysics._Tracers._Operator()
                self.eddy_viscosity_coeff = Ocean._LateralPhysics._Tracers._EddyViscosityCoeff()
                self.eddy_induced_velocity = Ocean._LateralPhysics._Tracers._EddyInducedVelocity()


            class _Details(object):
                """Detail: details.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.mesoscale_closure = None


            class _Operator(object):
                """Detail: operator.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.direction = None
                    self.order = None
                    self.discretisation = None


            class _EddyViscosityCoeff(object):
                """Detail: eddy_viscosity_coeff.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.eddy_visc_coeff_cst = None
                    self.eddy_visc_coeff_var = None
                    self.eddy_visc_coeff_background = None
                    self.eddy_visc_coeff_backscatter = None


            class _EddyInducedVelocity(object):
                """Detail: eddy_induced_velocity.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.eiv_constant_val = None
                    self.eiv_flux_type = None
                    self.eiv_added_diff = None


    class _TimesteppingFramework(object):
        """Process: Ocean - timestepping_framework.

        """
        def __init__(self):
            """Instance constructor.

            """
            pass


    class _UplowBoundaries(object):
        """Process: Ocean - uplow_boundaries.

        """
        def __init__(self):
            """Instance constructor.

            """
            pass


    class _VerticalPhysics(object):
        """Process: Ocean - vertical_physics.

        """
        def __init__(self):
            """Instance constructor.

            """
            self.boundary_layer_mixing = Ocean._VerticalPhysics._BoundaryLayerMixing()
            self.interior_mixing = Ocean._VerticalPhysics._InteriorMixing()


        class _BoundaryLayerMixing(object):
            """Sub-process: boundary_layer_mixing.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.tracers = Ocean._VerticalPhysics._BoundaryLayerMixing._Tracers()
                self.momentum = Ocean._VerticalPhysics._BoundaryLayerMixing._Momentum()


            class _Tracers(object):
                """Detail: tracers.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.closure_order = None
                    self.constant = None
                    self.background = None


            class _Momentum(object):
                """Detail: momentum.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.closure_order = None
                    self.constant = None
                    self.background = None


        class _InteriorMixing(object):
            """Sub-process: interior_mixing.

            """
            def __init__(self):
                """Instance constructor.

                """
                self.tracers = Ocean._VerticalPhysics._InteriorMixing._Tracers()
                self.momentum = Ocean._VerticalPhysics._InteriorMixing._Momentum()


            class _Tracers(object):
                """Detail: tracers.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.constant = None
                    self.profile = None
                    self.background = None


            class _Momentum(object):
                """Detail: momentum.

                """
                def __init__(self):
                    """Instance constructor.

                    """
                    self.type = None
                    self.constant = None
                    self.profile = None
                    self.background = None
