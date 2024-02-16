	object_const_def
	const SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER

SeabiteBridgePassable_MapScripts:
	def_scene_scripts
	scene_script SeabiteBridgeSetClusterScene, SCENE_SEABITEBRIDGEPASSABLE_SETCLUSTER
	scene_script SeabiteBridgeNoopScene, SCENE_SEABITEBRIDGEPASSABLE_NOOP

	def_callbacks

SeabiteBridgeSetClusterScene:
	sdefer SeabiteBridgeSetClusterScript
	end

SeabiteBridgeNoopScene:
	end

SeabiteBridgeSetClusterScript:
	disappear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	random 10
	ifless 1, .MoveClusterToPos1
	ifless 2, .MoveClusterToPos2
	ifless 3, .MoveClusterToPos3
	ifless 4, .MoveClusterToPos4
	ifless 7, .DontMoveCluster
	setscene SCENE_SEABITEBRIDGEPASSABLE_NOOP
	end

.MoveClusterToPos1
	moveobject SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER, 18, 8
	appear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	setscene SCENE_SEABITEBRIDGEPASSABLE_NOOP
	end

.MoveClusterToPos2
	moveobject SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER, 24, 5
	appear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	setscene SCENE_SEABITEBRIDGEPASSABLE_NOOP
	end

.MoveClusterToPos3
	moveobject SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER, 21, 8
	appear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	setscene SCENE_SEABITEBRIDGEPASSABLE_NOOP
	end

.MoveClusterToPos4
	moveobject SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER, 31, 5
	appear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	setscene SCENE_SEABITEBRIDGEPASSABLE_NOOP
	end

.DontMoveCluster
	appear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	setscene SCENE_SEABITEBRIDGEPASSABLE_NOOP
	end
	


SeabiteBridgeFeatherCluster:
	random 10
	ifless 5, .NothingHere
	ifless 6, .RareEncounter
	
.CommonEncounter
	cry WINGULL
	opentext
	writetext APokemonAttackedText
	waitbutton
	closetext
	loadwildmon WINGULL, 3
	startbattle
	disappear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	reloadmapafterbattle
	end

.NothingHere
	disappear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	opentext
	writetext NothingHereText
	waitbutton
	closetext
	end

.RareEncounter
	cry YANMA
	opentext
	writetext APokemonAttackedText
	waitbutton
	closetext
	loadwildmon YANMA, 4
	startbattle
	disappear SEABITEBRIDGEPASSABLE_FEATHER_CLUSTER
	reloadmapafterbattle
	end

APokemonAttackedText:
	text "A #MON"
	line "attacked!"
	done
	
NothingHereText:
	text "There's nothing"
	line "here."
	done


SeabiteBridgePassable_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  6, WISHOOK_EAST_GATE, 3
	warp_event  4,  7, WISHOOK_EAST_GATE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  5, SPRITE_FEATHERS, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeabiteBridgeFeatherCluster, -1