	object_const_def

WishookCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, WishookCityFlypointCallback

WishookCityFlypointCallback:
	setflag ENGINE_FLYPOINT_WISHOOK
	endcallback

WishookCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 26, WISHOOK_WEST_GATE, 3
	warp_event 10, 27, WISHOOK_WEST_GATE, 4
	warp_event 39, 13, WISHOOK_POKECENTER_1F, 2

	def_coord_events

	def_bg_events

	def_object_events