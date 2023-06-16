; Johto Pokémon in grass

JohtoGrassWildMons:

	def_grass_wildmons NEW_BARK_TOWN
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, ROOKIDEE
	db 2, BUNEARY
	db 3, ROOKIDEE
	db 3, BUNEARY
	db 2, RATTATA
	db 3, HOPPIP
	db 3, HOPPIP
	; day
	db 2, ROOKIDEE
	db 2, BUNEARY
	db 3, ROOKIDEE
	db 3, BUNEARY
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
	db 2, ROOKIDEE
	db 2, ROOKIDEE
	db 3, ROOKIDEE
	db 3, ROOKIDEE
	db 2, ODDISH
	db 3, MANKEY
	db 3, MANKEY
	; day
	db 2, JOLTIK
	db 2, MUNNA
	db 3, FERROSEED
	db 3, SIZZLIPEDE
	db 2, DUBWOOL
	db 3, MUNNA
	db 3, COTTONEE
	; nite
	db 2, ROOKIDEE
	db 2, ROOKIDEE
	db 3, ZUBAT
	db 3, ODDISH
	db 2, ZUBAT
	db 3, MANKEY
	db 3, MANKEY
	end_grass_wildmons
	
	def_grass_wildmons STONESTEP_TUNNEL_1F
	db 3 percent, 3 percent, 3 percent ; encounter rates: morn/day/nite
	; morn
	db 4, RATTATA
	db 4, ZUBAT
	db 4, GEODUDE
	db 4, SANDSHREW
	db 5, RATTATA
	db 3, EKANS
	db 3, EKANS
	; day
	db 4, RATTATA
	db 4, ZUBAT
	db 4, GEODUDE
	db 4, SANDSHREW
	db 5, RATTATA
	db 3, EKANS
	db 3, EKANS
	; nite
	db 4, RATTATA
	db 4, ZUBAT
	db 4, GEODUDE
	db 4, SANDSHREW
	db 5, RATTATA
	db 3, EKANS
	db 3, EKANS
	end_grass_wildmons

	db -1 ; end
