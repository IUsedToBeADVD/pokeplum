	object_const_def
	const WISHOOKPOKECENTER1F_NURSE
	const WISHOOKMART_CLERK

WishookPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

WishookPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

WishookMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

WishookPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  13, WISHOOK_CITY, 3
	warp_event  7,  13, WISHOOK_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WishookPokecenter1FNurseScript, -1
	object_event  10, 12, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WishookMartClerkScript, -1
