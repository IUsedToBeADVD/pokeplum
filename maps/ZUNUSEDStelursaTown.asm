	object_const_def
	const PECKSHELLTOWN_GUARD
	const PECKSHELLTOWN_GUARD1
	const PECKSHELLTOWN_TECHGUY

PeckshellTown_MapScripts:
	def_scene_scripts
	scene_script PeckshellTownNoop1Scene, SCENE_PECKSHELLTOWN_GUARD_STOPS_YOU
	scene_script PeckshellTownNoop2Scene, SCENE_PECKSHELLTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PeckshellTownFlypointCallback

PeckshellTownNoop1Scene:
	end

PeckshellTownNoop2Scene:
	end

PeckshellTownFlypointCallback:
	setflag ENGINE_FLYPOINT_PECKSHELL
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

PeckshellTown_RouteGuardStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject PECKSHELLTOWN_GUARD1, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement PECKSHELLTOWN_GUARD1, PeckshellTown_RouteGuardRunsToYouMovement1
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow PECKSHELLTOWN_GUARD1, PLAYER
	applymovement PECKSHELLTOWN_GUARD1, PeckshellTown_RouteGuardBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

PeckshellTown_RouteGuardStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject PECKSHELLTOWN_GUARD1, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement PECKSHELLTOWN_GUARD1, PeckshellTown_RouteGuardRunsToYouMovement2
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow PECKSHELLTOWN_GUARD1, PLAYER
	applymovement PECKSHELLTOWN_GUARD1, PeckshellTown_RouteGuardBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

PeckshellTown_ParkGuardStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject PECKSHELLTOWN_GUARD, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement PECKSHELLTOWN_GUARD, PeckshellTown_ParkGuardRunsToYouMovement1
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow PECKSHELLTOWN_GUARD, PLAYER
	applymovement PECKSHELLTOWN_GUARD, PeckshellTown_ParkGuardBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

PeckshellTown_ParkGuardStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject PECKSHELLTOWN_GUARD, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement PECKSHELLTOWN_GUARD, PeckshellTown_ParkGuardRunsToYouMovement2
	opentext
	writetext Text_YouDontHaveAPokemon
	waitbutton
	closetext
	follow PECKSHELLTOWN_GUARD, PLAYER
	applymovement PECKSHELLTOWN_GUARD, PeckshellTown_ParkGuardBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end	

PeckshellTownGuardScript:
	faceplayer
	opentext
	writetext Text_TakeOurJobsSeriously
	waitbutton
	closetext
	end

PeckshellTownTechGuyScript:
	faceplayer
	opentext
	writetext Text_TechIsTerrible
	waitbutton
	closetext
	end

PeckshellHiddenPokeball:
	hiddenitem POKE_BALL, EVENT_PECKSHELL_HIDDEN_POKEBALL

PeckshellHiddenExpShare:
	hiddenitem EXP_SHARE, EVENT_PECKSHELL_HIDDEN_EXP_SHARE

PeckshellTown_RouteGuardRunsToYouMovement1:
	step UP
	step UP
	turn_head LEFT
	step_end

PeckshellTown_RouteGuardBringsYouBackMovement1:
	step DOWN
	step DOWN
	turn_head UP
	step_end

PeckshellTown_RouteGuardRunsToYouMovement2:
	step UP
	turn_head LEFT
	step_end

PeckshellTown_RouteGuardBringsYouBackMovement2:
	step DOWN
	turn_head UP
	step_end

PeckshellTown_ParkGuardRunsToYouMovement1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

PeckshellTown_ParkGuardBringsYouBackMovement1:
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

PeckshellTown_ParkGuardRunsToYouMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

PeckshellTown_ParkGuardBringsYouBackMovement2:
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

PeckshellTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event  2, 28, SCENE_PECKSHELLTOWN_GUARD_STOPS_YOU, PeckshellTown_RouteGuardStopsYouScene1
	coord_event  2, 29, SCENE_PECKSHELLTOWN_GUARD_STOPS_YOU, PeckshellTown_RouteGuardStopsYouScene2
	coord_event  8, 3, SCENE_PECKSHELLTOWN_GUARD_STOPS_YOU, PeckshellTown_ParkGuardStopsYouScene1
	coord_event  9, 3, SCENE_PECKSHELLTOWN_GUARD_STOPS_YOU, PeckshellTown_ParkGuardStopsYouScene2


	def_bg_events
	bg_event 29, 34, BGEVENT_ITEM, PeckshellHiddenPokeball
	bg_event 11, 22, BGEVENT_ITEM, PeckshellHiddenExpShare

	def_object_events
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellTownGuardScript, EVENT_GUARD_PECKSHELL_TOWN
	object_event  3, 30, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellTownGuardScript, EVENT_GUARD_PECKSHELL_TOWN
	object_event  15, 27, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellTownTechGuyScript, -1

