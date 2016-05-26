"""
.. module:: utils_mapping.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: CMIP6 specialization mapping utility functions.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
def map_defn(obj, key):
    """Generic definition mapper.

    """
    result = lambda: None
    result.key = key
    result.ERRORS = []
    for k, v in obj.items():
        setattr(result, k, v)

    return result


def map_property(defn):
    """Property definition mapper.

    """
    result = lambda: None
    result.name = defn[0]
    result.type = defn[1]
    result.cardinality = defn[2]
    result.description = defn[3]

    return result
