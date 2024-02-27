	object_const_def

Route4ForestGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route4ForestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, POPORRI_FOREST, 3
	warp_event  5,  7, POPORRI_FOREST, 4
	warp_event  4,  0, ROUTE_4, 1
	warp_event  5,  0, ROUTE_4, 2

	def_coord_events

	def_bg_events

	def_object_events