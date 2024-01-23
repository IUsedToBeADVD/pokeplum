	object_const_def
	const PECKSHELLPIER_DOCK_FISHER
	const PECKSHELLPIER_SPLASH_KID
	const PECKSHELLPIER_ROCK1
	const PECKSHELLPIER_ROCK2
	const PECKSHELLPIER_ROCK3
	const PECKSHELLPIER_ROCK4
	const PECKSHELLPIER_ROCK5
	const PECKSHELLPIER_POTION
	const PECKSHELLPIER_ROCK_GIRL
	const PECKSHELLPIER_TECH_GUY
	const PECKSHELLPIER_DOCK_WORKER

PeckshellPier_MapScripts:
	def_scene_scripts

	def_callbacks
	
PeckshellDocksFisherScript:
	faceplayer
	opentext
	writetext PeckshellDocksFisherText
	waitbutton
	closetext
	end

PeckshellSplashKidScript:
	faceplayer
	opentext
	writetext PeckshellSplashKidText
	waitbutton
	closetext
	end

PeckshellRockGirlScript:
	faceplayer
	opentext
	writetext PeckshellRockGirlText
	waitbutton
	closetext
	end

PeckshellTechGuyScript:
	faceplayer
	opentext
	writetext PeckshellTechGuyText
	waitbutton
	closetext
	end

PeckshellDockWorkerScript:
	faceplayer
	opentext
	writetext PeckshellDockWorkerText
	waitbutton
	closetext
	end

PeckshellRock:
	jumpstd SmashRockScript

PeckshellPotion:
	itemball POTION



PeckshellDocksFisherText:
	text "Ahoy, young"
	line "<PLAYER>!"
	
	para "What a fine day!"
	
	para "The suns shining,"
	line "and the KRABBY"
	cont "are biting!"
	done

PeckshellSplashKidText:
	text "Wow-wee, the"
	line "sand is hot!"
	
	para "Splashing around"
	line "keeps my feet"
	cont "from burning!"
	done

PeckshellRockGirlText:
	text "KRABBY love to"
	line "hide in the"
	cont "rocks all"
	cont "across WALEN."
	
	para "If you smash"
	line "one open, you"
	cont "may get pinched!"
	done

PeckshellTechGuyText:
	text "Technology..."
	
	para "What a terrible"
	line "thing!"
	
	para "Who needs a"
	line "POKEDEX that"
	cont "records highly"
	cont "detailed info"
	cont "on #MON?"
	
	para "Not me!"
	done

PeckshellDockWorkerText:
	text "I'm packin' up"
	line "KRABBY meat on"
	cont "its way to"
	cont "WISHOOK CITY."
	
	para "From there, it"
	line "gets shipped all"
	cont "over the world."
	
	para "......"
	
	para "Why you lookin'"
	line "at me like that?"
	
	para "You a vegetarian"
	line "or somethin'?"
	done
	

PeckshellPier_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 17, PLAYERS_HOUSE_1F, 1
	warp_event 19,  5, PECKSHELL_GATE, 1
	warp_event 20,  5, PECKSHELL_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24, 24, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PeckshellDocksFisherScript, -1
	object_event 40, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellSplashKidScript, -1
	object_event  8, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellRock, -1
	object_event 10, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellRock, -1
	object_event  9, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellRock, -1
	object_event  6, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellRock, -1
	object_event  8, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellRock, -1
	object_event 40,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PeckshellPotion, EVENT_PECKSHELL_POTION
	object_event 11, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellRockGirlScript, -1
	object_event 21, 11, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PeckshellTechGuyScript, -1
	object_event 19, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PeckshellDockWorkerScript, -1