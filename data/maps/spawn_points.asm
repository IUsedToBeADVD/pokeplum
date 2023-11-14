MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,              3,  3
; kanto
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9
; johto
	spawn PECKSHELL_PIER,                26, 18
	spawn SINTIRI_TOWN,					 13, 28
	spawn WISHOOK_CITY,					 29, 14
	spawn BATTLE_TOWER_OUTSIDE,           8, 10

	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
