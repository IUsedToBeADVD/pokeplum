	object_const_def

WishookCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, WishookCityFlypointCallback

WishookCityFlypointCallback:
	setflag ENGINE_FLYPOINT_WISHOOK
	endcallback

WishookTestBridgeScript:
	faceplayer
	setevent EVENT_OPENED_SEABITE_BRIDGE
	opentext
	writetext BridgeOpenedText
	waitbutton
	closetext
	end

BridgeOpenedText:
	text "The bridge..."
	
	para "..."
	
	para "IS NOW OPEN!"
	done

WishookCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 26, WISHOOK_WEST_GATE, 3
	warp_event 10, 27, WISHOOK_WEST_GATE, 4
	warp_event 39, 13, WISHOOK_POKECENTER_1F, 2
	warp_event 72,  8, WISHOOK_EAST_GATE, 1
	warp_event 72,  9, WISHOOK_EAST_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 67,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WishookTestBridgeScript, -1