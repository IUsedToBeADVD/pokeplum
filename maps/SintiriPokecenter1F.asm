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
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

SintiriPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SINTIRI_TOWN, 1
	warp_event  4,  7, SINTIRI_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SintiriPokecenter1FNurseScript, -1
	object_event  8,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SintiriMartClerkScript, -1
