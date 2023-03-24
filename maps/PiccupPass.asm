	object_const_def

PiccupPass_MapScripts:
	def_scene_scripts

	def_callbacks

PiccupPass_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  14,  11, PICCUP_PIT, 1
	warp_event  4,  5, STUMPS_LAB, 1
	warp_event  2,  5, STUMPS_LAB, 3

	def_coord_events

	def_bg_events

	def_object_events