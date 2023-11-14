	object_const_def

Route52_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSchoolboyJohnny:
	trainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboySeenTextRoute52, SchoolboyBeatenTextRoute52, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextRoute52
	waitbutton
	closetext
	end

TrainerSchoolboyDanny:
	trainer SCHOOLBOY, DANNY, EVENT_BEAT_SCHOOLBOY_DANNY, SchoolboySeenTextRoute52, SchoolboyBeatenTextRoute52, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextRoute52
	waitbutton
	closetext
	end

TrainerSchoolboyTommy:
	trainer SCHOOLBOY, TOMMY, EVENT_BEAT_SCHOOLBOY_TOMMY, SchoolboySeenTextRoute52, SchoolboyBeatenTextRoute52, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextRoute52
	waitbutton
	closetext
	end

TrainerSchoolboyDudley:
	trainer SCHOOLBOY, DUDLEY, EVENT_BEAT_SCHOOLBOY_DUDLEY, SchoolboySeenTextDragonscalePeak1F, SchoolboyBeatenTextDragonscalePeak1F, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextDragonscalePeak1F
	waitbutton
	closetext
	end

TrainerSchoolboyJoe:
	trainer SCHOOLBOY, JOE, EVENT_BEAT_SCHOOLBOY_JOE, SchoolboySeenTextDragonscalePeak1F, SchoolboyBeatenTextDragonscalePeak1F, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextDragonscalePeak1F
	waitbutton
	closetext
	end

SchoolboySeenTextRoute52:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

SchoolboyBeatenTextRoute52:
	text "That's strange."
	line "I won before."
	done

SchoolboyAfterTextRoute52:
	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

Route52_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31,  8, ROUTE_52_GATE, 1
	warp_event 8,  17, STONESTEP_TUNNEL_1F, 4
	warp_event 6,   7, STONESTEP_TUNNEL_B1F, 1
	warp_event 32,  8, ROUTE_52_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  27, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 6, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJohnny, -1
	object_event  25, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyDanny, -1
	object_event  30, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyTommy, -1
	object_event  27, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 6, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyDudley, -1
	object_event  12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJoe, -1