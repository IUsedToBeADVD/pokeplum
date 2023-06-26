	object_const_def
	const STELURSATOWN_GUARD
	const STELURSATOWN_GUARD1
	const STELURSATOWN_TECHGUY

StelursaTown_MapScripts:
	def_scene_scripts
	scene_script StelursaTownNoop1Scene, SCENE_STELURSATOWN_GUARD_STOPS_YOU
	scene_script StelursaTownNoop2Scene, SCENE_STELURSATOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, StelursaTownFlypointCallback

StelursaTownNoop1Scene:
	end

StelursaTownNoop2Scene:
	end

StelursaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_STELURSA
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

StelursaTown_RouteGuardStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject STELURSATOWN_GUARD1, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement STELURSATOWN_GUARD1, StelursaTown_RouteGuardRunsToYouMovement1
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow STELURSATOWN_GUARD1, PLAYER
	applymovement STELURSATOWN_GUARD1, StelursaTown_RouteGuardBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

StelursaTown_RouteGuardStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject STELURSATOWN_GUARD1, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement STELURSATOWN_GUARD1, StelursaTown_RouteGuardRunsToYouMovement2
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow STELURSATOWN_GUARD1, PLAYER
	applymovement STELURSATOWN_GUARD1, StelursaTown_RouteGuardBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

StelursaTown_ParkGuardStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject STELURSATOWN_GUARD, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement STELURSATOWN_GUARD, StelursaTown_ParkGuardRunsToYouMovement1
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow STELURSATOWN_GUARD, PLAYER
	applymovement STELURSATOWN_GUARD, StelursaTown_ParkGuardBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

StelursaTown_ParkGuardStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject STELURSATOWN_GUARD, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement STELURSATOWN_GUARD, StelursaTown_ParkGuardRunsToYouMovement2
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow STELURSATOWN_GUARD, PLAYER
	applymovement STELURSATOWN_GUARD, StelursaTown_ParkGuardBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end	

StelursaTownGuardScript:
	faceplayer
	opentext
	writetext Text_TakeOurJobsSeriously
	waitbutton
	closetext
	end

StelursaTownTechGuyScript:
	faceplayer
	opentext
	writetext Text_TechIsTerrible
	waitbutton
	closetext
	end

StelursaHiddenPokeball:
	hiddenitem POKE_BALL, EVENT_STELURSA_HIDDEN_POKEBALL

StelursaTown_RouteGuardRunsToYouMovement1:
	step UP
	step UP
	turn_head LEFT
	step_end

StelursaTown_RouteGuardBringsYouBackMovement1:
	step DOWN
	step DOWN
	turn_head UP
	step_end

StelursaTown_RouteGuardRunsToYouMovement2:
	step UP
	turn_head LEFT
	step_end

StelursaTown_RouteGuardBringsYouBackMovement2:
	step DOWN
	turn_head UP
	step_end

StelursaTown_ParkGuardRunsToYouMovement1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

StelursaTown_ParkGuardBringsYouBackMovement1:
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

StelursaTown_ParkGuardRunsToYouMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

StelursaTown_ParkGuardBringsYouBackMovement2:
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

Text_WaitPlayer:
	text "Woah, <PLAY_G>!"
	done

Text_YouDontHaveAPokemon:
	text "Back you get..."
	done

Text_ItsDangerousToGoAlone:
	text "Did you forget"
	line "what day it is?"

	para "You better get"
	line "yourself over to"
	cont "the LAB pronto."

	para "Otherwise, the"
	line "pickings may be"
	cont "slim."
	done

Text_TakeOurJobsSeriously:
	text "My twin brother"
	line "and I take our"
	cont "jobs seriously."
	done

Text_TechIsTerrible:
	text "Technology is"
	line "terrible!"
	
	para "..."
	
	para "I'm kidding,"
	line "of course!"
	done

StelursaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 23, PLAYERS_HOUSE_1F, 1
	warp_event 15,  5, STUMPS_LAB, 1
	warp_event 8,  2, PETALFALL_PARK, 1
	warp_event 9,  2, PETALFALL_PARK, 2
	warp_event 37,  32, ROUTE_65, 1
	warp_event 37,  33, ROUTE_50_GATE, 2

	def_coord_events
	coord_event  2, 28, SCENE_STELURSATOWN_GUARD_STOPS_YOU, StelursaTown_RouteGuardStopsYouScene1
	coord_event  2, 29, SCENE_STELURSATOWN_GUARD_STOPS_YOU, StelursaTown_RouteGuardStopsYouScene2
	coord_event  8, 3, SCENE_STELURSATOWN_GUARD_STOPS_YOU, StelursaTown_ParkGuardStopsYouScene1
	coord_event  9, 3, SCENE_STELURSATOWN_GUARD_STOPS_YOU, StelursaTown_ParkGuardStopsYouScene2


	def_bg_events
	bg_event 29, 34, BGEVENT_ITEM, StelursaHiddenPokeball

	def_object_events
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StelursaTownGuardScript, EVENT_GUARD_STELURSA_TOWN
	object_event  3, 30, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StelursaTownGuardScript, EVENT_GUARD_STELURSA_TOWN
	object_event  15, 27, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StelursaTownTechGuyScript, -1

