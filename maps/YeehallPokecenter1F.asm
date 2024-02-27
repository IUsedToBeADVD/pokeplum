	object_const_def
	const YEEHALLPOKECENTER1F_NURSE
	const YEEHALLMART_CLERK

YeehallPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

YeehallPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

YeehallMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

YeehallPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 13, YEEHALL_CITY, 1
	warp_event  7, 13, YEEHALL_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YeehallPokecenter1FNurseScript, -1
	object_event  10, 12, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YeehallMartClerkScript, -1
