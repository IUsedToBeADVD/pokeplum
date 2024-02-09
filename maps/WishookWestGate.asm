	object_const_def

WishookWestGate_MapScripts:
	def_scene_scripts

	def_callbacks

WishookWestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_2, 7
	warp_event  0,  5, ROUTE_2, 8
	warp_event  9,  4, WISHOOK_CITY, 1
	warp_event  9,  5, WISHOOK_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events