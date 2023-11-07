	object_const_def

PeckshellPier_MapScripts:
	def_scene_scripts

	def_callbacks

PeckshellPier_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 17, PLAYERS_HOUSE_1F, 1
	warp_event 19,  5, PECKSHELL_GATE, 1
	warp_event 20,  5, PECKSHELL_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events