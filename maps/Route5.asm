	object_const_def

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   4,   6, ROUTE_5_GATE, 1
	warp_event   4,   7, ROUTE_5_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events