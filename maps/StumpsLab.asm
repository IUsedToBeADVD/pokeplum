	object_const_def

StumpsLab_MapScripts:
	def_scene_scripts

	def_callbacks

StumpsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  11, STELURSA_TOWN, 2
	warp_event  5,  11, STELURSA_TOWN, 2
	warp_event  13,  2, STUMPS_LAB_ROOF, 1
	def_coord_events

	def_bg_events

	def_object_events