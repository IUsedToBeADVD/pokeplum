	object_const_def

Route50_MapScripts:
	def_scene_scripts

	def_callbacks

Route50_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4,  14, ROUTE_50_GATE, 1
	warp_event 4,  15, ROUTE_50_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events