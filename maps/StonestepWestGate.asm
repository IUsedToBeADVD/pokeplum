	object_const_def

StonestepWestGate_MapScripts:
	def_scene_scripts

	def_callbacks

StonestepWestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, ROUTE_2, 1
	warp_event  5, 11, ROUTE_2, 2
	warp_event 13,  5, STONESTEP_TUNNEL_1F, 1
	warp_event 14,  5, STONESTEP_TUNNEL_1F, 2

	def_coord_events

	def_bg_events

	def_object_events