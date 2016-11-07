# -*- coding: utf-8 -*-

"""
.. module:: specialization.py
   :platform: Unix, Windows
   :synopsis: Wraps a base CMIP6 specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
class Specialization(object):
    """Wraps a specialization.

    """
    def __init__(self, mod):
        """Instance constructor.

        """
        self.mod = mod


    @property
    def doc_name(self):
        """A simplified name useful in documentation scenrios.

        """
        name = self.name

        return " ".join(["{}{}".format(i[0].upper(), i[1:]) for i in name.split("_")])
