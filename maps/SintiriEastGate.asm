	object_const_def

SintiriEastGate_MapScripts:
	def_scene_scripts

	def_callbacks

SintiriEastGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, SINTIRI_TOWN, 2
	warp_event  0,  5, SINTIRI_TOWN, 3
	warp_event  9,  4, ROUTE_2, 5
	warp_event  9,  5, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events