; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.
; IMPORTANT: each group can only have up to 9 sprites with walking animations (otherwise, some may glitch when walking)

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2, OutdoorSprites
	dw CableClubGroupSprites
	dw BattleTowerGroupSprites
	dw NewBarkGroupSprites
	dw IndigoGroupSprites
	dw DungeonsGroupSprites
	dw PeckshellGroupSprites
	dw WishookGroupSprites
	dw BridgesGroupSprites
	assert_table_length NUM_MAP_GROUPS

CableClubGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end

BattleTowerGroupSprites:
PeckshellGroupSprites:
WishookGroupSprites:
NewBarkGroupSprites:
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_BUG_CATCHER
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_FISHER
	db SPRITE_BEAUTY
	db SPRITE_SUPER_NERD
	; 9 / 9 max walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX
	db SPRITE_ROCK
	db SPRITE_NURSE
	db SPRITE_FRUIT_TREE
	db 0 ; end

IndigoGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end

DungeonsGroupSprites:
	db SPRITE_POKEFAN_M
	db SPRITE_POKEFAN_F
	db SPRITE_BUG_CATCHER
	db SPRITE_SCIENTIST
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_FISHER
	db SPRITE_BEAUTY
	db SPRITE_SUPER_NERD
	; 9 / 9 max walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX
	db SPRITE_ROCK
	db SPRITE_NURSE
	db SPRITE_BOULDER
	db SPRITE_GROWLITHE
	db 0 ; end

BridgesGroupSprites:
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_FISHER
	db SPRITE_SUPER_NERD
	; 4 / 9 max walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FEATHERS
	db 0 ; end


