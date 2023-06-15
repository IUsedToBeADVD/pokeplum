	object_const_def
	const STUMPSLAB_MAIN_AIDE

StumpsLab_MapScripts:
	def_scene_scripts
	scene_script StumpsLabLateForStarterScene, SCENE_STUMPSLAB_LATE_FOR_STARTER
	scene_script StumpsLabNoop1Scene, SCENE_STUMPSLAB_CANT_LEAVE
	scene_script StumpsLabNoop2Scene, SCENE_STUMPSLAB_NOOP


	def_callbacks
	callback MAPCALLBACK_OBJECTS, StumpsLabMoveAideAfterStarter

StumpsLabLateForStarterScene:
	sdefer StumpsLabWalkUpToAideScript
	end

StumpsLabNoop1Scene:
	end

StumpsLabNoop2Scene:
	end

StumpsLabMoveAideAfterStarter:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .Skip; got starter
	checkscene
	iftrue .MoveToStairs; not first scene
	moveobject STUMPSLAB_MAIN_AIDE, 4, 6
	endcallback
.Skip:
	endcallback
.MoveToStairs:
	moveobject STUMPSLAB_MAIN_AIDE, 8, 2
	endcallback

StumpsLab_AideStopsYouScene:
	turnobject STUMPSLAB_MAIN_AIDE, DOWN
	opentext
	writetext StumpsAideText_Quickly
	waitbutton
	closetext
	applymovement PLAYER, StumpsLab_MoveOneRight
	end


StumpsLabWalkUpToAideScript:
	turnobject STUMPSLAB_MAIN_AIDE, UP
	applymovement PLAYER, StumpsLab_WalkUpToAide
	pause 15
	opentext
	writetext StumpsAideText_TalkingToSelf
	waitbutton
	closetext
	turnobject STUMPSLAB_MAIN_AIDE, DOWN
	pause 30
	playsound SFX_SAVE
	showemote EMOTE_SHOCK, STUMPSLAB_MAIN_AIDE, 15
	waitsfx
	opentext
	writetext StumpsAideText_YoureLate
	waitbutton
	closetext
	follow STUMPSLAB_MAIN_AIDE, PLAYER
	applymovement STUMPSLAB_MAIN_AIDE, StumpsLab_AideLeadsYouToStairsMovement
	stopfollow
	applymovement PLAYER, StumpsLab_WalkTowardsStairs
	setscene SCENE_STUMPSLAB_CANT_LEAVE
	end

StumpsMainAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .WayToGo
	writetext StumpsAideText_Quickly
	waitbutton
	closetext
	end

.WayToGo:
	writetext StumpsAideText_WayToGo
	waitbutton
	closetext
	end

StumpsLab_WalkUpToAide:
	step UP
	step UP
	step UP
	step UP
	step_end

StumpsLab_AideLeadsYouToStairsMovement:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

StumpsLab_WalkTowardsStairs:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

StumpsLab_MoveOneRight:
	step RIGHT
	step_end

StumpsAideText_TalkingToSelf:
	text "I bet those kids"
	line "are just itching"
	cont "with excitement."
	
	para "But I could have"
	line "sworn there was"
	cont "one missing..."
	done

StumpsAideText_YoureLate:
	text "<PLAY_G>!"
	
	para "Where have you"
	line "been!?"
	
	para "PROF. STUMP and"
	line "the rest are"
	cont "already upstairs!"
	
	para "Hurry, hurry,"
	line "HURRY!"
	done

StumpsAideText_Quickly:
	text "Quickly!"
	line "Or you'll be"
	cont "left out!"
	done

StumpsAideText_WayToGo:
	text "You better take"
	line "good care of"
	cont "that #MON."
	
	para "If PROF. STUMP"
	line "wasn't prone to"
	cont "rambling,"
	
	para "you could have"
	line "missed your"
	cont "chance."
	done


StumpsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  11, STELURSA_TOWN, 2
	warp_event  5,  11, STELURSA_TOWN, 2
	warp_event  13,  2, STUMPS_LAB_ROOF, 1
	def_coord_events
	coord_event  8, 3, SCENE_STUMPSLAB_CANT_LEAVE, StumpsLab_AideStopsYouScene

	def_bg_events

	def_object_events
	object_event  13,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StumpsMainAideScript, -1