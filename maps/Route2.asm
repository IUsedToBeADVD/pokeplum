	object_const_def

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29,  5, STONESTEP_WEST_GATE, 1
	warp_event 30,  5, STONESTEP_WEST_GATE, 2
	warp_event 63,  5, STONESTEP_EAST_GATE, 5
	warp_event 64,  5, STONESTEP_EAST_GATE, 6

	def_coord_events

	def_bg_events

	def_object_events