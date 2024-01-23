	object_const_def
	const STONESTEPEASTGATE_CHANSEY
	const STONESTEPEASTGATE_NURSE

StonestepEastGate_MapScripts:
	def_scene_scripts

	def_callbacks

StonestepEastGateNurseScript:
	faceplayer
	opentext
	writetext StonestepEastGateNeedToHealText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext StonestepEastGateHealedText
	waitbutton
	closetext
	end

StonestepEastGateChanseyScript:
	faceplayer
	opentext
	writetext StonestepEastGateChanseyText
	cry CHANSEY
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext StonestepEastGateChanseyText
	cry CHANSEY
	waitbutton
	closetext
	end

StonestepEastGateNeedToHealText:
	text "Your #MON look"
	line "a little tired."

	para "Allow CHANSEY"
	line "to heal them."
	done

StonestepEastGateHealedText:
	text "Your #MON are"
	line "fully healed."

	para "Please come again."
	done

StonestepEastGateChanseyText:
	text "CHAN-SII!"
	done

StonestepEastGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 13, STONESTEP_TUNNEL_1F, 3
	warp_event  2, 13, STONESTEP_TUNNEL_1F, 4
	warp_event 13,  0, ATMOTORIUM_HAIL, 1
	warp_event 14,  0, ATMOTORIUM_HAIL, 2
	warp_event 13, 19, ROUTE_2, 3
	warp_event 14, 19, ROUTE_2, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  14, 14, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StonestepEastGateChanseyScript, -1
	object_event  13, 14, SPRITE_TRAVEL_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StonestepEastGateNurseScript, -1