	object_const_def

SintiriTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SintiriTownFlypointCallback

SintiriTownFlypointCallback:
	setflag ENGINE_FLYPOINT_SINTIRI
	endcallback

SintiriTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29,  5, SINTIRI_POKECENTER_1F, 1
	warp_event 35,  6, ROUTE_50_GATE, 3
	warp_event 35,  7, ROUTE_50_GATE, 4
	def_coord_events

	def_bg_events

	def_object_events