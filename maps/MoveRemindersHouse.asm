	object_const_def

MoveRemindersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MoveReminder:
	faceplayer
	opentext
	special MoveReminder
	waitbutton
	closetext
	end	


MoveRemindersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminder, -1