	object_const_def

Route51_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterSamuel:
	trainer YOUNGSTER, SAMUEL, EVENT_BEAT_YOUNGSTER_SAMUEL, YoungsterSeenTextRoute51, YoungsterBeatenTextRoute51, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAfterTextRoute51
	waitbutton
	closetext
	end

TrainerYoungsterGordon:
	trainer YOUNGSTER, GORDON, EVENT_BEAT_YOUNGSTER_GORDON, YoungsterSeenTextRoute51, YoungsterBeatenTextRoute51, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAfterTextRoute51
	waitbutton
	closetext
	end

TrainerYoungsterIan:
	trainer YOUNGSTER, IAN, EVENT_BEAT_YOUNGSTER_IAN, YoungsterSeenTextRoute51, YoungsterBeatenTextRoute51, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAfterTextRoute51
	waitbutton
	closetext
	end

TrainerYoungsterWarren:
	trainer YOUNGSTER, WARREN, EVENT_BEAT_YOUNGSTER_WARREN, YoungsterSeenTextRoute51, YoungsterBeatenTextRoute51, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAfterTextRoute51
	waitbutton
	closetext
	end

YoungsterSeenTextRoute51:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

YoungsterBeatenTextRoute51:
	text "That's strange."
	line "I won before."
	done

YoungsterAfterTextRoute51:
	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

Route51_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 5, STONESTEP_TUNNEL_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event   9, 36, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterGordon, -1
	object_event   3, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterSamuel, -1
	object_event  14, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterIan, -1
	object_event  15, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterWarren, -1