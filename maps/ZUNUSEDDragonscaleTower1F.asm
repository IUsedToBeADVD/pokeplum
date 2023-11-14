	object_const_def

DragonscaleTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

DragonscaleTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  13, SINTIRI_TOWN, 2
	warp_event 7,  13, SINTIRI_TOWN, 2
	warp_event 3,   3, DRAGONSCALE_TOWER_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events