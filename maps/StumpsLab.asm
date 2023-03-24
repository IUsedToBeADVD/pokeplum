	object_const_def

StumpsLab_MapScripts:
	def_scene_scripts

	def_callbacks

StumpsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  10,  11, PICCUP_PASS, 2
	warp_event  11,  11, PICCUP_PASS, 2
	warp_event  2,  11, PICCUP_PASS, 3
	warp_event  3,  11, PICCUP_PASS, 3

	def_coord_events

	def_bg_events

	def_object_events