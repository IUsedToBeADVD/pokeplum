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
	warp_event  9, 25, SINTIRI_POKECENTER_1F, 2
	warp_event 33, 18, SINTIRI_EAST_GATE, 1
	warp_event 33, 19, SINTIRI_EAST_GATE, 2
	
	def_coord_events

	def_bg_events

	def_object_events