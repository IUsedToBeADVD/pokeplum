	object_const_def

DragonscalePeak1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSchoolboyJack:
	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboySeenTextDragonscalePeak1F, SchoolboyBeatenTextDragonscalePeak1F, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextDragonscalePeak1F
	waitbutton
	closetext
	end

TrainerSchoolboyKipp:
	trainer SCHOOLBOY, KIPP, EVENT_BEAT_SCHOOLBOY_KIP, SchoolboySeenTextDragonscalePeak1F, SchoolboyBeatenTextDragonscalePeak1F, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextDragonscalePeak1F
	waitbutton
	closetext
	end

TrainerSchoolboyAlan:
	trainer SCHOOLBOY, ALAN1, EVENT_BEAT_SCHOOLBOY_ALAN, SchoolboySeenTextDragonscalePeak1F, SchoolboyBeatenTextDragonscalePeak1F, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyAfterTextDragonscalePeak1F
	waitbutton
	closetext
	end

SchoolboySeenTextDragonscalePeak1F:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

SchoolboyBeatenTextDragonscalePeak1F:
	text "That's strange."
	line "I won before."
	done

SchoolboyAfterTextDragonscalePeak1F:
	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

DragonscalePeak1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  10, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJack, -1
	object_event   6, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyKipp, -1
	object_event  33, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyAlan, -1