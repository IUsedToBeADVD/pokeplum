	object_const_def

Route3ForestGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route3ForestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_3, 3
	warp_event  5,  7, ROUTE_3, 4
	warp_event  4,  0, POPORRI_FOREST, 1
	warp_event  5,  0, POPORRI_FOREST, 2

	def_coord_events

	def_bg_events

	def_object_events