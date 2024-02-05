	object_const_def
	const ROUTE1_KIOSK_GIRL
	const ROUTE1_FRUIT_TREE

Route1_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route1KioskGirlScript:
	faceplayer
	opentext
	writetext Route1KioskGirlDoYouKnowText
	yesorno
	iffalse .DontKnow
	writetext Route1KioskGirlWantedToExplainText
	waitbutton
	closetext
	end

.DontKnow:
	writetext Route1KioskGirlItsAKioskText
	waitbutton
	closetext
	end

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_29

Route1KioskGirlDoYouKnowText:
	text "Hey, hey, hey!"
	line "Do you know what"
	cont "that big sign is"
	cont "over there?"
	done
	
Route1KioskGirlWantedToExplainText:
	text "Oh darn it,"
	line "I wanted to"
	cont "explain..."
	done
	
Route1KioskGirlItsAKioskText:
	text "It's a KIOSK!"
	
	para "They tell you all"
	line "about what kind"
	cont "of #MON"
	cont "you might find!"
	
	para "There's one on"
	line "every route!"
	done


Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 23, 12, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route1KioskGirlScript, -1
	object_event 33,  0, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
