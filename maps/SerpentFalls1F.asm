	object_const_def
	const SERPENTFALLS1F_EKANS

SerpentFalls1F_MapScripts:
	def_scene_scripts

	def_callbacks

WildEkans:
	faceplayer
	opentext
	writetext SerpentFalls1FEkansCryText
	pause 15
	cry EKANS
	closetext
	loadwildmon EKANS, 5
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	startbattle
	ifequal LOSE, .NotBeaten
	disappear SERPENTFALLS1F_EKANS
.NotBeaten:
	reloadmapafterbattle
	opentext
	giveitem DRAGON_FANG
	waitsfx
	writetext SerpentFalls1FGotFangText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

SerpentFalls1FEkansCryText:
	text "EKANSSsss"
	done

SerpentFalls1FGotFangText:
	text "There is an odd"
	line "tooth on the"
	cont "ground."
	done

SerpentFalls1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20, 3, SINTIRI_LAKE, 1
	warp_event 15, 9, SINTIRI_LAKE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8, 15, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WildEkans, EVENT_SERPENT_FALLS_EKANS