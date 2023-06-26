	object_const_def
	const SINTIRIPOKECENTER1F_NURSE
	const SINTIRIMART_CLERK

SintiriPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SintiriPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SintiriMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX
	closetext
	end

SintiriPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  13, SINTIRI_TOWN, 1
	warp_event  7,  13, SINTIRI_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SintiriPokecenter1FNurseScript, -1
	object_event  10, 12, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SintiriMartClerkScript, -1
