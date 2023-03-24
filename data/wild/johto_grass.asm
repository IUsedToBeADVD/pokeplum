; Johto Pokémon in grass

JohtoGrassWildMons:

	def_grass_wildmons NEW_BARK_TOWN
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PIDGEY
	db 2, SENTRET
	db 3, PIDGEY
	db 3, SENTRET
	db 2, RATTATA
	db 3, HOPPIP
	db 3, HOPPIP
	; day
	db 2, PIDGEY
	db 2, SENTRET
	db 3, PIDGEY
	db 3, SENTRET
	db 2, RATTATA
	db 3, HOPPIP
	db 3, HOPPIP
	; nite
	db 2, HOOTHOOT
	db 2, RATTATA
	db 3, HOOTHOOT
	db 3, RATTATA
	db 2, RATTATA
	db 3, HOOTHOOT
	db 3, HOOTHOOT
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_50
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, SPEAROW
	db 2, RATTATA
	db 3, SPEAROW
	db 3, RATTATA
	db 2, ODDISH
	db 3, MANKEY
	db 3, MANKEY
	; day
	db 2, RATTATA
	db 2, SPEAROW
	db 3, RATTATA
	db 3, SPEAROW
	db 2, RATTATA
	db 3, MANKEY
	db 3, MANKEY
	; nite
	db 2, SPEAROW
	db 2, RATTATA
	db 3, ZUBAT
	db 3, RATTATA
	db 2, ZUBAT
	db 3, MANKEY
	db 3, MANKEY
	end_grass_wildmons

	db -1 ; end
