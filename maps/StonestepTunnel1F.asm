	object_const_def

StonestepTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

StonestepTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   3,  33, ROUTE_51, 1
	warp_event   3,   9, STONESTEP_TUNNEL_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events