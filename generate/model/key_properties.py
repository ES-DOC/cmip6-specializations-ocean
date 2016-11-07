# -*- coding: utf-8 -*-

"""
.. module:: grid.py
   :platform: Unix, Windows
   :synopsis: Wraps a CMIP6 specialization key_properties definition.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from .specialization_detail_collection import SpecializationDetailCollection
from .specialization_module import SpecializationModule



class KeyProperties(SpecializationModule):
    """Wraps a key properties specialization.

    """
    def __init__(self, owner, mod):
        """Instance constructor.

        """
        super(KeyProperties, self).__init__(owner, mod, "key-properties")

        try:
            self.conservation = KeyPropertiesConservation(mod, self)
        except KeyError:
            self.conservation = None
        try:
            self.extent = KeyPropertiesExtent(mod, self)
        except KeyError:
            self.extent = None
        try:
            self.resolution = KeyPropertiesResolution(mod, self)
        except KeyError:
            self.resolution = None
        try:
            self.tuning = KeyPropertiesTuning(mod, self)
        except KeyError:
            self.tuning = None


class KeyPropertiesConservation(SpecializationDetailCollection):
    """Wraps a key properties conservation specialization.

    """
    def __init__(self, mod, kp):
        """Instance constructor.

        """
        super(KeyPropertiesConservation, self).__init__(
            mod, kp, "conservation", "EXTRA_CONSERVATION_PROPERTIES")


class KeyPropertiesExtent(SpecializationDetailCollection):
    """Wraps a key properties extent specialization.

    """
    def __init__(self, mod, kp):
        """Instance constructor.

        """
        super(KeyPropertiesExtent, self).__init__(
            mod, kp, "extent", "EXTENT")


class KeyPropertiesResolution(SpecializationDetailCollection):
    """Wraps a key properties resolution specialization.

    """
    def __init__(self, mod, kp):
        """Instance constructor.

        """
        super(KeyPropertiesResolution, self).__init__(
            mod, kp, "resolution", "RESOLUTION")


class KeyPropertiesTuning(SpecializationDetailCollection):
    """Wraps a key properties tuning specialization.

    """
    def __init__(self, mod, kp):
        """Instance constructor.

        """
        super(KeyPropertiesTuning, self).__init__(
            mod, kp, "tuning", "TUNING_APPLIED")
