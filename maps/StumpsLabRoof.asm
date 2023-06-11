	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_POKE_BALL4
	const ELMSLAB_POKE_BALL5
	const ELMSLAB_POKE_BALL6
	const ELMSLAB_POKE_BALL7
	const ELMSLAB_POKE_BALL8

StumpsLabRoof_MapScripts:
	def_scene_scripts

	def_callbacks

ProfElmScript:
	faceplayer
	opentext
	writetext ShitWhaddupText
	waitbutton
	closetext
	end
	
TreeckoPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic TREECKO
	cry TREECKO
	waitbutton
	closepokepic
	opentext
	writetext TakeTreeckoText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_TREECKO_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TREECKO, 5, BERRY
	closetext
	applymovement PLAYER, AfterTreeckoMovement
	end

TorchicPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic TORCHIC
	cry TORCHIC
	waitbutton
	closepokepic
	opentext
	writetext TakeTorchicText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TORCHIC_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TORCHIC, 5, BERRY
	closetext
	applymovement PLAYER, AfterTorchicMovement
	end

MudkipPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic MUDKIP
	cry MUDKIP
	waitbutton
	closepokepic
	opentext
	writetext TakeMudkipText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_MUDKIP_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke MUDKIP, 5, BERRY
	closetext
	applymovement PLAYER, AfterMudkipMovement
	end

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL4
	setevent EVENT_GOT_BULBASAUR_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5, BERRY
	closetext
	applymovement PLAYER, AfterBulbasaurMovement
	end

CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL5
	setevent EVENT_GOT_CHARMANDER_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHARMANDER, 5, BERRY
	closetext
	applymovement PLAYER, AfterCharmanderMovement
	end

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL6
	setevent EVENT_GOT_SQUIRTLE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5, BERRY
	closetext
	applymovement PLAYER, AfterSquirtleMovement
	end

EeveePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic EEVEE
	cry EEVEE
	waitbutton
	closepokepic
	opentext
	writetext TakeEeveeText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL7
	setevent EVENT_GOT_EEVEE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke EEVEE, 5, BERRY
	closetext
	applymovement PLAYER, AfterEeveeMovement
	end

PikachuPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic PIKACHU
	cry PIKACHU
	waitbutton
	closepokepic
	opentext
	writetext TakePikachuText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL8
	setevent EVENT_GOT_PIKACHU_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PIKACHU, 5, BERRY
	closetext
	applymovement PLAYER, AfterPikachuMovement
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end
	
DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

AfterTreeckoMovement:
	step UP
	turn_head DOWN
	step_end

AfterTorchicMovement:
	step UP
	turn_head DOWN
	step_end

AfterMudkipMovement:
	step UP
	turn_head DOWN
	step_end

AfterBulbasaurMovement:
	step DOWN
	turn_head UP
	step_end

AfterCharmanderMovement:
	step DOWN
	turn_head UP
	step_end

AfterSquirtleMovement:
	step DOWN
	turn_head UP
	step_end

AfterEeveeMovement:
	step RIGHT
	turn_head LEFT
	step_end

AfterPikachuMovement:
	step DOWN
	step DOWN
	step RIGHT
	turn_head UP
	step_end

ElmPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.ELM."
	done

TakeTreeckoText:
	text "ELM: So, you like"
	line "TREECKO, the"
	cont "grass #MON?"
	done

TakeTorchicText:
	text "ELM: So, you like"
	line "TORCHIC, the"
	cont "fire #MON?"
	done

TakeMudkipText:
	text "ELM: So, you like"
	line "MUDKIP, the"
	cont "water #MON?"
	done

TakeBulbasaurText:
	text "ELM: So, you like"
	line "BULBASAUR, the"
	cont "grass #MON?"
	done

TakeCharmanderText:
	text "ELM: So, you like"
	line "CHARMANDER, the"
	cont "fire #MON?"
	done

TakeSquirtleText:
	text "ELM: So, you like"
	line "SQUIRTLE, the"
	cont "water #MON?"
	done

TakeEeveeText:
	text "ELM: So, you like"
	line "EEVEE, the"
	cont "normal #MON?"
	done

TakePikachuText:
	text "ELM: So, you like"
	line "PIKACHU, the"
	cont "electric #MON?"
	done

DidntChooseStarterText:
	text "ELM: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "ELM: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "a #MON!"
	done

ShitWhaddupText:
	text "Shit, whaddup?"
	done


StumpsLabRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  1, STUMPS_LAB, 3
	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TreeckoPokeBallScript, EVENT_TREECKO_POKEBALL_IN_ELMS_LAB
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TorchicPokeBallScript, EVENT_TORCHIC_POKEBALL_IN_ELMS_LAB
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MudkipPokeBallScript, EVENT_MUDKIP_POKEBALL_IN_ELMS_LAB
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_ELMS_LAB
	object_event  3,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_ELMS_LAB
	object_event  4,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_ELMS_LAB
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveePokeBallScript, EVENT_EEVEE_POKEBALL_IN_ELMS_LAB
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PikachuPokeBallScript, EVENT_PIKACHU_POKEBALL_IN_ELMS_LAB