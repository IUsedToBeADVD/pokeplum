	object_const_def

Route3BridgeGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route3BridgeGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, SEABITE_BRIDGE_PASSABLE, 3
	warp_event  0,  5, SEABITE_BRIDGE_PASSABLE, 4
	warp_event 11, 13, ROUTE_3, 1
	warp_event 12, 13, ROUTE_3, 2

	def_coord_events

	def_bg_events

	def_object_events