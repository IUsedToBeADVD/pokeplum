	object_const_def
	const STUMPSLABROOF_POKE_BALL1
	const STUMPSLABROOF_POKE_BALL2
	const STUMPSLABROOF_POKE_BALL3
	const STUMPSLABROOF_POKE_BALL4
	const STUMPSLABROOF_POKE_BALL5
	const STUMPSLABROOF_POKE_BALL6
	const STUMPSLABROOF_POKE_BALL7
	const STUMPSLABROOF_POKE_BALL8

StarterRoom_MapScripts:
	def_scene_scripts

	def_callbacks

TreeckoPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic TREECKO
	cry TREECKO
	waitbutton
	closepokepic
	opentext
	writetext TakeTreeckoText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL1
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
	sjump GotStarterScript

TorchicPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic TORCHIC
	cry TORCHIC
	waitbutton
	closepokepic
	opentext
	writetext TakeTorchicText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL2
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
	sjump GotStarterScript

MudkipPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic MUDKIP
	cry MUDKIP
	waitbutton
	closepokepic
	opentext
	writetext TakeMudkipText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL3
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
	sjump GotStarterScript

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL4
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
	sjump GotStarterScript
	
CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL5
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
	sjump GotStarterScript
	
SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL6
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
	sjump GotStarterScript
	
EeveePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic EEVEE
	cry EEVEE
	waitbutton
	closepokepic
	opentext
	writetext TakeEeveeText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL7
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
	sjump GotStarterScript
	
PikachuPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject STUMPSLABROOF_STUMP, DOWN
	refreshscreen
	pokepic PIKACHU
	cry PIKACHU
	waitbutton
	closepokepic
	opentext
	writetext TakePikachuText
	yesorno
	iffalse DidntChooseStarterScript
	disappear STUMPSLABROOF_POKE_BALL8
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
	sjump GotStarterScript

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

GotStarterScript:
	setmapscene STELURSA_TOWN, SCENE_STELURSATOWN_NOOP
	setmapscene STUMPS_LAB, SCENE_STUMPSLAB_NOOP
	setmapscene STUMPS_LAB_ROOF, SCENE_STUMPSLABROOF_CAN_LEAVE
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_GUARD_STELURSA_TOWN
	end

ElmPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.STUMP."
	done

TakeTreeckoText:
	text "STUMP: So,"
	line "TREECKO, the"
	cont "grass #MON?"
	done

TakeTorchicText:
	text "STUMP: So,"
	line "TORCHIC, the"
	cont "fire #MON?"
	done

TakeMudkipText:
	text "STUMP: So,"
	line "MUDKIP, the"
	cont "water #MON?"
	done

TakeBulbasaurText:
	text "STUMP: So,"
	line "BULBASAUR, the"
	cont "grass #MON?"
	done

TakeCharmanderText:
	text "STUMP: So,"
	line "CHARMANDER, the"
	cont "fire #MON?"
	done

TakeSquirtleText:
	text "STUMP: So,"
	line "SQUIRTLE, the"
	cont "water #MON?"
	done

TakeEeveeText:
	text "STUMP: So,"
	line "EEVEE, the"
	cont "normal #MON?"
	done

TakePikachuText:
	text "STUMP: So,"
	line "PIKACHU, the"
	cont "electric type?"
	done

DidntChooseStarterText:
	text "STUMP: Think on it"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "STUMP: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "a #MON!"
	done

StarterRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4,  7, STUMPS_LAB_ROOF, 2
	warp_event 5,  7, STUMPS_LAB_ROOF, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TreeckoPokeBallScript, EVENT_TREECKO_POKEBALL_IN_ELMS_LAB
	object_event  4,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TorchicPokeBallScript, EVENT_TORCHIC_POKEBALL_IN_ELMS_LAB
	object_event  3,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MudkipPokeBallScript, EVENT_MUDKIP_POKEBALL_IN_ELMS_LAB
	object_event  3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_ELMS_LAB
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_ELMS_LAB
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_ELMS_LAB
	object_event  5,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveePokeBallScript, EVENT_EEVEE_POKEBALL_IN_ELMS_LAB
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PikachuPokeBallScript, EVENT_PIKACHU_POKEBALL_IN_ELMS_LAB