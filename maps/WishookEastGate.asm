	object_const_def

WishookEastGate_MapScripts:
	def_scene_scripts
	scene_script WishookEastGateNoop1Scene, SCENE_WISHOOKEASTGATE_NOOP

	def_callbacks

WishookEastGateNoop1Scene:
	end

WarpToSeabiteBridge1Script:
	special FadeOutPalettes
	checkevent EVENT_OPENED_SEABITE_BRIDGE
	iftrue .WarpToPassableBridge1
	warpfacing RIGHT, SEABITE_BRIDGE_IMPASSABLE, 4, 6
	end

.WarpToPassableBridge1:
	warpfacing RIGHT, SEABITE_BRIDGE_PASSABLE, 4, 6
	end

WarpToSeabiteBridge2Script:
	special FadeOutPalettes
	checkevent EVENT_OPENED_SEABITE_BRIDGE
	iftrue .WarpToPassableBridge2
	warpfacing RIGHT, SEABITE_BRIDGE_IMPASSABLE, 4, 7
	end

.WarpToPassableBridge2:
	warpfacing RIGHT, SEABITE_BRIDGE_PASSABLE, 4, 7
	end
	

WishookEastGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, WISHOOK_CITY, 4
	warp_event  0,  5, WISHOOK_CITY, 5
	warp_event  9,  4, SEABITE_BRIDGE_PASSABLE, 1
	warp_event  9,  5, SEABITE_BRIDGE_PASSABLE, 2

	def_coord_events
	coord_event  9,  4, SCENE_WISHOOKEASTGATE_NOOP, WarpToSeabiteBridge1Script
	coord_event  9,  5, SCENE_WISHOOKEASTGATE_NOOP, WarpToSeabiteBridge2Script

	def_bg_events

	def_object_events