	object_const_def

Route50Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route50Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  4, ROUTE_50, 1
	warp_event  9,  5, ROUTE_50, 2
	warp_event  0,  4, SINTIRI_TOWN, 2
	warp_event  0,  5, SINTIRI_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events