	object_const_def

Route52Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route52Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_52, 1
	warp_event  5,  7, ROUTE_52, 1
	warp_event  4,  0, WISHOOK_CITY, 1
	warp_event  5,  0, WISHOOK_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events