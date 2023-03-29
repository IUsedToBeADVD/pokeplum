	object_const_def

StonebreezeNorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

StonebreezeNorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, STONEBREEZE_VILLAGE, 2
	warp_event  5,  7, STONEBREEZE_VILLAGE, 2
	warp_event  4,  0, ROUTE_51, 1
	warp_event  5,  0, ROUTE_51, 2

	def_coord_events

	def_bg_events

	def_object_events