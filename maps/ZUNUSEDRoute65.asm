	object_const_def

Route65_MapScripts:
	def_scene_scripts

	def_callbacks

Route65HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE65_HIDDEN_POTION

Route65_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  28, PECKSHELL_TOWN, 5
	warp_event 6,  29, PECKSHELL_TOWN, 6

	def_coord_events

	def_bg_events
	bg_event 6, 24, BGEVENT_ITEM, Route65HiddenPotion

	def_object_events