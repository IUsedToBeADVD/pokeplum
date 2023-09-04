	object_const_def

StonestepTunnel2F_MapScripts:
	def_scene_scripts

	def_callbacks

StonestepTunnel2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, STONESTEP_TUNNEL_1F, 2
	warp_event  3,  9, DRAGONSCALE_PEAK_1F, 1
	warp_event 17,  5, DRAGONSCALE_PEAK_1F, 2
	warp_event 17, 15, STONESTEP_TUNNEL_1F, 3

	def_coord_events

	def_bg_events

	def_object_events