# -*- coding: utf-8 -*-

"""
.. module:: parser.py
   :platform: Unix, Windows
   :synopsis: An event style specializations parser.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from utils import log



class Parser(object):
    """An event driven CMIP6 realm specializations parser.

    """
    def __init__(self, realm, verbose=False):
        """Instance constructor.

        """
        self.realm = realm
        self.verbose = verbose


    def parse(self):
        """Parses the CMIP6 vocabulary raising events as it does so.

        """
        # Raise realm parse event.
        if self.verbose:
            log("parsing: {}".format(self.realm.id))
        self.on_realm_parse(self.realm)

        # Parse child processes.
        processes = sorted(self.realm.processes, key = lambda p: p.name)
        for process in processes:
            self._parse_process(self.realm, process)


    def on_realm_parse(self, realm):
        """On realm parse event handler.

        """
        pass


    def on_process_parse(self, realm, process):
        """On process parse event handler.

        """
        pass


    def on_subprocess_parse(self, process, subprocess):
        """On sub-process parse event handler.

        """
        pass


    def on_detail_parse(self, owner, detail):
        """On detail parse event handler.

        """
        pass


    def on_detail_property_parse(self, owner, detail):
        """On process detail parse event handler.

        """
        pass


    def _parse_process(self, realm, process):
        """Parses a realm process.

        """
        # Raise process parse event.
        if self.verbose:
            log("parsing: {}".format(process.id))
        self.on_process_parse(realm, process)

        # Parse details.
        self._parse_details(process)

        # Parse child sub-processes.
        sub_processes = sorted(process.sub_processes, key = lambda sp: sp.name)
        for sub_process in sub_processes:
            self._parse_subprocess(realm, process, sub_process)


    def _parse_subprocess(self, realm, process, sub_process):
        """Parses a realm sub process.

        """
        # Raise sub-process parse event.
        if self.verbose:
            log("parsing: {}".format(sub_process.id))
        self.on_subprocess_parse(process, sub_process)

        # Iterate set of sub-process details.
        self._parse_details(sub_process)


    def _parse_details(self, owner):
        # Iterate set of details.
        for detail in sorted(owner.details, key = lambda i: i.id):
            # Raise detail parse event.
            if self.verbose:
                log("parsing: {}".format(detail.id))
            self.on_detail_parse(owner, detail)

            # Iterate set of detail properties.
            for detail_property in sorted(detail.properties, key = lambda i: i.id):
                # Raise detail-property parse event.
                if self.verbose:
                    log("parsing: {}".format(detail_property.id))
                self.on_detail_property_parse(detail, detail_property)
