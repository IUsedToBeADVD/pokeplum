	object_const_def

Route52_MapScripts:
	def_scene_scripts

	def_callbacks

Route52_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31,  5, ROUTE_52_GATE, 1
	warp_event 8,  17, STONESTEP_TUNNEL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events