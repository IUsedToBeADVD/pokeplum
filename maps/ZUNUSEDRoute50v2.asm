	object_const_def
	const ROUTE50_TREE1
	const ROUTE50_TREE2
	const ROUTE50_ITEM1
	const ROUTE50_SHINY

Route50_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route50FruitTree1:
	fruittree FRUITTREE_ROUTE_29

Route50FruitTree2:
	fruittree FRUITTREE_ROUTE_30_1

Route50Potion:
	itemball POTION

Route50ShinyTest:
	cry MAGIKARP
	pause 15
	loadwildmon MAGIKARP, 18
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	ifequal LOSE, .NotBeaten
	disappear ROUTE50_SHINY
.NotBeaten:
	reloadmapafterbattle
	end

Route50_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50FruitTree1, -1
	object_event  8,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50FruitTree2, -1
	object_event 17, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route50Potion, EVENT_ROUTE_50_POTION
	object_event  15, 2, SPRITE_SUDOWOODO, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50ShinyTest, -1