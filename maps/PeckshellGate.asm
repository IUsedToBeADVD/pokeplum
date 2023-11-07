	object_const_def

PeckshellGate_MapScripts:
	def_scene_scripts

	def_callbacks

PeckshellGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, PECKSHELL_PIER, 2
	warp_event  5,  7, PECKSHELL_PIER, 3
	warp_event  4,  0, ROUTE_1, 1
	warp_event  5,  0, ROUTE_1, 2

	def_coord_events

	def_bg_events

	def_object_events