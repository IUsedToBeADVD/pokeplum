; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const BULBASAUR  ; 01
	const IVYSAUR    ; 02
	const VENUSAUR   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const CHARIZARD  ; 06
	const SQUIRTLE   ; 07
	const WARTORTLE  ; 08
	const BLASTOISE  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const WEEDLE     ; 0d to-go
	const KAKUNA     ; 0e to-go
	const BEEDRILL   ; 0f to-go
	const ROOKIDEE   ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const JIGGLYPUFF ; 27
	const WIGGLYTUFF ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const ODDISH     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const SNOM    	 ; 30
	const SNOMYOMI   ; 31
	const DIGLETT    ; 32 to-go
	const DUGTRIO    ; 33 to-go
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e to-go
	const ABRA       ; 3f
	const KADABRA    ; 40
	const ALAKAZAM   ; 41
	const MACHOP     ; 42 to-go
	const MACHOKE    ; 43 to-go
	const MACHAMP    ; 44 to-go
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const MAGNEMITE  ; 51
	const MAGNETON   ; 52
	const FARFETCH_D ; 53
	const DODUO      ; 54
	const DODRIO     ; 55
	const WINGULL       ; 56
	const PELIPPER      ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const SHELLDER   ; 5a
	const CLOYSTER   ; 5b
	const GASTLY     ; 5c
	const HAUNTER    ; 5d
	const GENGAR     ; 5e
	const ONIX       ; 5f
	const DROWZEE    ; 60 to-go
	const HYPNO      ; 61 to-go
	const KRABBY     ; 62
	const KINGLER    ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const EXEGGCUTE  ; 66
	const EXEGGUTOR  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const LEAFEON  ; 6a
	const GLACEON ; 6b
	const EMOLGA  ; 6c
	const KOFFING    ; 6d
	const WEEZING    ; 6e
	const RHYHORN    ; 6f
	const RHYDON     ; 70
	const CHANSEY    ; 71
	const TANGELA    ; 72
	const KANGASKHAN ; 73
	const HORSEA     ; 74
	const SEADRA     ; 75
	const CACNEA    ; 76
	const CACTURNE    ; 77
	const STARYU     ; 78 to-go
	const STARMIE    ; 79 to-go
	const MR__MIME   ; 7a
	const SCYTHER    ; 7b
	const JYNX       ; 7c to-go
	const ELECTABUZZ ; 7d
	const MAGMAR     ; 7e
	const PINSIR     ; 7f
	const TAUROS     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const DITTO      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const PORYGON    ; 89
	const OMANYTE    ; 8a to-go
	const OMASTAR    ; 8b to-go
	const KABUTO     ; 8c
	const KABUTOPS   ; 8d
	const AERODACTYL ; 8e
	const SNORLAX    ; 8f
	const ARTICUNO   ; 90
	const ZAPDOS     ; 91
	const MOLTRES    ; 92
	const DRATINI    ; 93
	const DRAGONAIR  ; 94
	const DRAGONITE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97
DEF JOHTO_POKEMON EQU const_value
	const TREECKO    ; 98
	const GROVYLE    ; 99
	const SCEPTILE   ; 9a
	const TORCHIC  	 ; 9b to-go
	const COMBUSKEN  ; 9c to-go
	const BLAZIKEN 	 ; 9d to-go
	const MUDKIP     ; 9e to-go
	const MARSHTOMP  ; 9f to-go
	const SWAMPERT 	 ; a0 to-go
	const BUNEARY    ; a1
	const LOPUNNY    ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const MUNNA     ; a5
	const MUSHARNA     ; a6
	const PUBBLE   	 ; a7
	const GUBBLER  ; a8
	const CROBAT     ; a9
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const LOTAD      ; ac
	const LOMBRE     ; ad
	const LUDICOLO  ; ae
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3 to-go
	const FLAAFFY    ; b4 to-go
	const AMPHAROS   ; b5 to-go
	const BELLOSSOM  ; b6
	const MEDITITE     ; b7
	const MEDICHAM  ; b8
	const SUDOWOODO  ; b9
	const POLITOED   ; ba to-go
	const HOPPIP     ; bb to-go
	const SKIPLOOM   ; bc to-go
	const JUMPLUFF   ; bd to-go
	const MAGNELOCKE      ; be
	const SUNKERN    ; bf
	const SUNFLORA   ; c0
	const YANMA      ; c1
	const WOOPER     ; c2 to-go
	const QUAGSIRE   ; c3 to-go
	const ESPEON     ; c4
	const UMBREON    ; c5
	const MURKROW    ; c6
	const SLOWKING   ; c7
	const MISDREAVUS ; c8 to-go
	const UNOWN      ; c9
	const GYARADOS_S  ; ca
	const GIRAFARIG  ; cb
	const SHIELDON     ; cc
	const BASTIODON ; cd
	const DUNSPARCE  ; ce
	const GLIGAR     ; cf
	const STEELIX    ; d0
	const CRANIDOS   ; d1
	const RAMPARDOS   ; d2
	const QWILFISH   ; d3 to-go
	const SCIZOR     ; d4
	const SHUCKLE    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7 to-go
	const COTTONEE  ; d8
	const WHIMSICOTT   ; d9
	const APPLIN     ; da
	const APPLETUN   ; db
	const SWINUB     ; dc
	const PILOSWINE  ; dd
	const CORSOLA    ; de
	const DUDUNSPARCE_TWO   ; df
	const DUDUNSPARCE_THREE  ; e0
	const DELIBIRD   ; e1 to-go
	const MANTINE    ; e2
	const AUDINO   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const KINGDRA    ; e6
	const MINKEY     ; e7
	const CREEPTURE    ; e8
	const PORYGON2   ; e9
	const STANTLER   ; ea
	const SMEARGLE   ; eb to-go
	const TYROGUE    ; ec to-go
	const SYLVEON  ; ed
	const SMOOCHUM   ; ee to-go
	const ELEKID     ; ef
	const MAGBY      ; f0
	const MILTANK    ; f1
	const BLISSEY    ; f2
	const ARCHETA     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const LARVITAR   ; f6 to-go
	const PUPITAR    ; f7 to-go
	const TYRANITAR  ; f8 to-go
	const LUGIA      ; f9
	const HOGWYRE      ; fa
	const CELEBI     ; fb
	const MAMOSWINE  ; fc
DEF NUM_POKEMON EQU const_value - 1
	const EGG        ; fd

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
DEF NUM_UNOWN EQU const_value - 1 ; 26
