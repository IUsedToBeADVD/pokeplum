	object_const_def
;	const ROUTE2_SHINY_TEST

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

;ShinyTest:
;	cry GYARADOS
;	loadwildmon PUBBLE, 27
;	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
;	startbattle
;	disappear ROUTE2_SHINY_TEST
;	reloadmapafterbattle
;	end

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29,  5, STONESTEP_WEST_GATE, 1
	warp_event 30,  5, STONESTEP_WEST_GATE, 2
	warp_event 63,  5, STONESTEP_EAST_GATE, 5
	warp_event 64,  5, STONESTEP_EAST_GATE, 6
	warp_event  4,  8, SINTIRI_EAST_GATE, 3
	warp_event  4,  9, SINTIRI_EAST_GATE, 4
	warp_event 93,  8, WISHOOK_WEST_GATE, 1
	warp_event 93,  9, WISHOOK_WEST_GATE, 2

	def_coord_events

	def_bg_events
;	object_event 17, 12, SPRITE_FAMICOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShinyTest, -1
	def_object_events