	object_const_def

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, ROUTE_3_BRIDGE_GATE, 3
	warp_event  8,  9, ROUTE_3_BRIDGE_GATE, 4
	warp_event 33,  5, ROUTE_3_FOREST_GATE, 1
	warp_event 34,  5, ROUTE_3_FOREST_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events