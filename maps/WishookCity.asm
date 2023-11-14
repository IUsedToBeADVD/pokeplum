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

	def_coord_events

	def_bg_events

	def_object_events