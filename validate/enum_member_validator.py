"""
.. module:: enum_member_validator.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Validates a CMIP6 enumeration member specialization.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
def validate(defn):
    """Validates an enum member.

    """
    errors = []

    # Name is mandatory.
    name = defn[0]
    if name is None:
        errors.append("name is invalid")

    # Description is mandatory.
    description = defn[1]
    # if description is None or description.lower() == "tbd":
    if description is None:
        errors.append("member description is missing :: member-name={}".format(name))

    return errors
