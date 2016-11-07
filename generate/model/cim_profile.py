# -*- coding: utf-8 -*-

"""
.. module:: cim_profile.py
   :platform: Unix, Windows
   :synopsis: Set of CIM constraints pertinent to CMIP6.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
from collections import OrderedDict



# Declare profile over CIM v2.
CIM_PROFILE = OrderedDict()

# science.model constraints.
CIM_PROFILE["science.model"] = {
	"include": [
		"category",
		"citations",
		"description",
		"key_properties",
		"name",
		"long_name",
		"processes",
		"specialization_id",
		"version"
	],
	"exclude": [
		"coupled_components",
		"coupler",
		"development_history",
		"development_path",
		"internal_software_components",
		"release_date”",
		"repository",
	]
}

# science.realm constraints.
CIM_PROFILE["science.realm"] = {
	"include": [
	   "citations",
	   "grid",
	   "key_properties",
	   "name",
	   "overview",
	   "processes",
	   "specialization_id",
	],
	"exclude": []
}

# science.process constraints.
CIM_PROFILE["science.process"] = {
	"include": [
	   "citations",
	   "details",
	   "description",
	   "implementation_overview",
	   "keywords",
	   "short_name",
	   "specialization_id",
	   "sub_processes"
	],
	"exclude": []
}

# science.sub_process constraints.
CIM_PROFILE["science.sub_process"] = {
	"include": [
	   "citations",
	   "details",
	   "description",
	   "id",
	   "implementation_overview",
	   "short_name"
	],
	"exclude": []
}

# science.key_properties constraints.
CIM_PROFILE["science.key_properties"] = {
	"include": [
	   "citations",
	   "details",
	   "description",
	   "id",
	   "keywords",
	   "short_name",
	   "sub_processes",
	   "tuning_applied"
	],
	"exclude": [
		"extent",
		"extra_conservation_properties",
		"implementation_overview",
		"keywords",
		"resolution"
	]
}

# science.model[ocean].key_properties constraints.
CIM_PROFILE["science.realm[ocean].key_properties"] = {
	"include": [
		"citations",
		"details",
		"description"
		"extra_conservation_properties",
		"id",
		"keywords",
		"resolution",
		"short_name",
		"sub_processes",
		"tuning_applied"
	],
	"exclude": [
		"extent",
		"implementation_overview",
		"keywords",
	]
}

# Null constraints used as plahceholders.
NULL_CIM_PROFILE = {
	"include": [],
	"exclude": []
}