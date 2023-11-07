	object_const_def
	const STUMPSLABROOF_STUMP
	const STUMPSLABROOF_NERD
	const STUMPSLABROOF_LASS
	const STUMPSLABROOF_BEAUTY
	const STUMPSLABROOF_BUG_CATCHER
	const STUMPSLABROOF_YOUNGSTER

StumpsLabRoof_MapScripts:
	def_scene_scripts
	scene_script StumpsLabRoofArrivedScene, SCENE_STUMPSLABROOF_ARRIVED
	scene_script StumpsLabRoofNoop1Scene, SCENE_STUMPSLABROOF_CANT_LEAVE
	scene_script StumpsLabRoofNoop2Scene, SCENE_STUMPSLABROOF_CAN_LEAVE

	def_callbacks
	callback MAPCALLBACK_OBJECTS, StumpsLabRoofResetStumpsPositionCallback

StumpsLabRoofArrivedScene:
	sdefer StumpsLabRoofJoinCrowdAndListenScript
	end

StumpsLabRoofNoop1Scene:
	end

StumpsLabRoofNoop2Scene:
	end

StumpsLabRoofJoinCrowdAndListenScript:
	applymovement PLAYER, StumpsLabRoof_WalkIntoCrowd
	pause 30
	opentext
	writetext StumpsLabRoofText_HaventNoticedPlayerYet1
	waitbutton
	closetext
	pause 15
	applymovement STUMPSLABROOF_STUMP, StumpsLabRoof_WalkBack
	pause 15
	opentext
	writetext StumpsLabRoofText_HaventNoticedPlayerYet2
	waitbutton
	closetext
	pause 15
	turnobject STUMPSLABROOF_STUMP, RIGHT
	pause 30
	turnobject STUMPSLABROOF_STUMP, DOWN
	pause 30
	opentext
	writetext StumpsLabRoofText_NoticedPlayer
	waitbutton
	closetext
	setscene SCENE_STUMPSLABROOF_CANT_LEAVE
	end

StumpsLabRoofResetStumpsPositionCallback:
	checkscene
	iftrue .Skip ;it is first scene
	moveobject STUMPSLABROOF_STUMP, 6, 0
.Skip:
	endcallback


StumpsLabRoof_ForgotPokemonScene:
	opentext
	writetext StumpsLabRoofText_CantLeave
	waitbutton
	closetext
	applymovement PLAYER, StumpsLabRoof_WalkBack
	end

ProfElmScript:
	faceplayer
	opentext
	writetext ShitWhaddupText
	waitbutton
	closetext
	end

StumpsLabRoofNerdScript:
	faceplayer
	opentext
	writetext StumpsLabRoofNerdText
	waitbutton
	closetext
	end

StumpsLabRoofLassScript:
	faceplayer
	opentext
	writetext StumpsLabRoofLassText
	waitbutton
	closetext
	end

StumpsLabRoofBeautyScript:
	faceplayer
	opentext
	writetext StumpsLabRoofBeautyText
	waitbutton
	closetext
	end

StumpsLabRoofBugCatcherScript:
	faceplayer
	opentext
	writetext StumpsLabRoofBugCatcherText
	waitbutton
	closetext
	end
	
StumpsLabRoofYoungsterScript:
	faceplayer
	opentext
	writetext StumpsLabRoofYoungsterText
	waitbutton
	closetext
	end

StumpsLabRoof_WalkIntoCrowd:
	step DOWN
	step DOWN
	step LEFT
	turn_head UP
	step_end

StumpsLabRoof_WalkBack:
	step DOWN
	step_end

ShitWhaddupText:
	text "Shit, whaddup?"
	done

StumpsLabRoofNerdText:
	text "Make haste!"
	
	para "For I grow"
	line "impatient to"
	cont "recieve my pet."
	done

StumpsLabRoofLassText:
	text "Normally, I'd"
	line "love to talk."
	
	para "But could it"
	line "wait until"
	cont "afterwards?"
	done

StumpsLabRoofBeautyText:
	text "Are you KIDDING"
	line "me!?"
	
	para "Why do YOU get"
	line "to go first?"
	done

StumpsLabRoofBugCatcherText:
	text "Hey, what gives?"
	
	para "Eight #MON"
	line "to choose from,"
	cont "but no bug types?"
	
	para "I'm ditching my"
	line "starter as soon"
	cont "as I can,"
	
	para "then I'm going"
	line "to fill my team"
	cont "up with BUGS!"
	done

StumpsLabRoofYoungsterText:
	text "My parents are"
	line "really excited."
	
	para "They think I'm"
	line "starting a big"
	cont "adventure."
	
	para "But, I just"
	line "want a #MON"
	cont "to cuddle."
	done

StumpsLabRoofText_HaventNoticedPlayerYet1:
	text "STUMP: And that,"
	line "kiddos, is the"
	cont "denouement to"
	cont "my grand speech."
	
	para "It was long,"
	line "loquacious,"
	cont "verbose,"
	cont "even redundant"
	cont "at times..."
	done

StumpsLabRoofText_HaventNoticedPlayerYet2:
	text "STUMP: Hmmm..."
	done

StumpsLabRoofText_NoticedPlayer:
	text "STUMP: We appear"
	line "to have gained"
	cont "a kiddo."
	
	para "Go choose your"
	line "#MON, kiddo."
	done

StumpsLabRoofText_CantLeave:
	text "STUMP: No no..."
	
	para "#MON first,"
	line "and THEN we"
	cont "head downstairs."
	done 


StumpsLabRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  1, STUMPS_LAB, 3
	warp_event  4,  5, STARTER_ROOM, 1
	def_coord_events
	coord_event  7, 2, SCENE_STUMPSLABROOF_CANT_LEAVE, StumpsLabRoof_ForgotPokemonScene

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  6,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StumpsLabRoofNerdScript, -1
	object_event  8,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StumpsLabRoofLassScript, -1
	object_event  6,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StumpsLabRoofBeautyScript, -1
	object_event  8,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StumpsLabRoofBugCatcherScript, -1
	object_event  8,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StumpsLabRoofYoungsterScript, -1