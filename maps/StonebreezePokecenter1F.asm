	object_const_def
	const STONEBREEZEPOKECENTER1F_NURSE
	const STONEBREEZEMART_CLERK

StonebreezePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

StonebreezePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

StonebreezeMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

StonebreezePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, STONEBREEZE_VILLAGE, 1
	warp_event  4,  7, STONEBREEZE_VILLAGE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StonebreezePokecenter1FNurseScript, -1
	object_event  8,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StonebreezeMartClerkScript, -1
