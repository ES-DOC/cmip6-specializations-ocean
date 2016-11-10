                        # -*- coding: utf-8 -*-

"""
.. module:: parser.py
   :platform: Unix, Windows
   :synopsis: An event style specializations parser.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
class Parser(object):
    """An event driven CMIP6 realm specializations parser.

    """
    def __init__(self, realm, verbose=False):
        """Instance constructor.

        """
        self.realm = realm
        self.verbose = verbose


    def run(self):
        """Runs the parser raising events as it does so.

        """
        self._parse_realm(self.realm)


    def _sort(self):
        """Sort collections priot to parsing.

        """
        self.realm.processes = sorted(self.realm.processes, key=lambda p: p.name)
        for process in self.realm.processes:
            process.sub_processes = sorted(process.sub_processes, key=lambda sp: sp.name)


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        pass


    def on_realm_parsed(self, realm):
        """On realm parsed event handler.

        """
        pass


    def on_grid_parse(self, realm, grid):
        """On grid parse event handler.

        """
        pass


    def on_grid_parsed(self, realm, grid):
        """On grid parsed event handler.

        """
        pass


    def on_key_properties_parse(self, realm, key_properties):
        """On key_properties parse event handler.

        """
        pass


    def on_key_properties_parsed(self, realm, key_properties):
        """On key_properties parsed event handler.

        """
        pass


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        pass


    def on_process_parsed(self, realm, process):
        """On process parsed event handler.

        """
        pass


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        pass


    def on_subprocess_parsed(self, process, subprocess):
        """On sub-process parsed event handler.

        """
        pass


    def on_detail_set_parse(self, owner, detail_set):
        """On detail set parse event handler.

        """
        pass


    def on_detail_property_parse(self, detail, prop):
        """On process detail parse event handler.

        """
        pass


    def on_detail_property_choice_parse(self, detail, prop, choice):
        """On process detail property choice parse event handler.

        """
        pass


    def _parse_realm(self, realm):
        """Parses a realm.

        """
        if self.verbose:
            log("parsing: {}".format(self.realm.id))
        self.on_realm_parse(self.realm)

        if self.realm.grid:
            self._parse_grid(self.realm, self.realm.grid)
        if self.realm.key_properties:
            self._parse_key_properties(self.realm, self.realm.key_properties)
        for process in self.realm.processes:
            self._parse_process(self.realm, process)

        self.on_realm_parsed(self.realm)


    def _parse_grid(self, realm, grid):
        """Parses a grid.

        """
        if self.verbose:
            log("parsing: {}".format(grid.id))

        self.on_grid_parse(realm, grid)

        self._parse_detail_sets(grid)

        self.on_grid_parsed(realm, grid)


    def _parse_key_properties(self, realm, key_properties):
        """Parses key properties.

        """
        if self.verbose:
            log("parsing: {}".format(key_properties.id))

        self.on_key_properties_parse(realm, key_properties)

        self._parse_detail_sets(key_properties)

        self.on_key_properties_parsed(realm, key_properties)


    def _parse_process(self, realm, process):
        """Parses a realm process.

        """
        # Raise process parse event.
        if self.verbose:
            log("parsing: {}".format(process.id))
        self.on_process_parse(realm, process)

        # Parse details.
        self._parse_detail_sets(process)

        # Parse child sub-processes.
        for sub_process in process.sub_processes:
            self._parse_subprocess(realm, process, sub_process)

        # Raise process parsed event.
        self.on_process_parsed(realm, process)


    def _parse_subprocess(self, realm, process, sub_process):
        """Parses a realm sub process.

        """
        # Raise sub-process parse event.
        if self.verbose:
            log("parsing: {}".format(sub_process.id))
        self.on_subprocess_parse(process, sub_process)

        # Iterate set of sub-process details.
        self._parse_detail_sets(sub_process)

        # Raise sub-process parsed event.
        self.on_subprocess_parsed(process, sub_process)


    def _parse_detail_sets(self, owner):
        """Parses a set of details.

        """
        # Iterate set of details.
        for detail_set in owner.details:
            self._parse_detail_set(owner, detail_set)


    def _parse_detail_set(self, owner, detail_set):
        """Parses a set of details.

        """
        # Raise detail parse event.
        if self.verbose:
            log("parsing: {}".format(detail_set.id))
        self.on_detail_set_parse(owner, detail_set)

        # Iterate set of detail set properties.
        for detail in detail_set.properties:
            self._parse_detail(detail_set, detail)


    def _parse_detail(self, detail_set, detail):
        """Parses a set of details.

        """
        if self.verbose:
            log("parsing: {}".format(detail.id))
        self.on_detail_property_parse(detail_set, detail)

        # Iterate enumeration choices.
        if detail.enum:
            for choice in detail.enum.choices:
                self.on_detail_property_choice_parse(detail_set, detail, choice)


def log(msg):
    """Outputs a message to log.

    :param str msg: Logging message.

    """
    if msg.startswith('-'):
        print(msg)
    else:
        print("ES-DOC :: {}".format(msg))
