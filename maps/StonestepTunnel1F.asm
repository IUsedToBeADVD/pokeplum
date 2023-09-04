	object_const_def

StonestepTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterJimmy:
	trainer YOUNGSTER, JIMMY, EVENT_BEAT_YOUNGSTER_JIMMY, YoungsterSeenTextStonestepTunnel1F, YoungsterBeatenTextStonestepTunnel1F, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAfterTextStonestepTunnel1F
	waitbutton
	closetext
	end

YoungsterSeenTextStonestepTunnel1F:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

YoungsterBeatenTextStonestepTunnel1F:
	text "That's strange."
	line "I won before."
	done

YoungsterAfterTextStonestepTunnel1F:
	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

StonestepTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ROUTE_51, 1
	warp_event 13,  7, STONESTEP_TUNNEL_2F, 1
	warp_event 23,  5, STONESTEP_TUNNEL_2F, 4
	warp_event 27, 15, ROUTE_52, 2
	warp_event  3,  3, STONESTEP_TUNNEL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  16, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterJimmy, -1