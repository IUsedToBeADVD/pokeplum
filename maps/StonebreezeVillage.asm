	object_const_def

StonebreezeVillage_MapScripts:
	def_scene_scripts

	def_callbacks

StonebreezeVillage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  15,  5, STONEBREEZE_POKECENTER_1F, 1
	warp_event   4,  6, STONEBREEZE_NORTH_WEST_GATE, 1
	warp_event   4,  7, STONEBREEZE_NORTH_WEST_GATE, 2
	def_coord_events

	def_bg_events

	def_object_events