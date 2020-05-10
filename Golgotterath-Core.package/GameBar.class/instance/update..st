initialization
update: gameboard
	| player |
	player := gameboard player.
	player
		ifNotNil: [ player weapon
				ifNil: [ weapon contents: 'None  ' ]
				ifNotNil: [ weapon contents: player weapon asString,'  ' ].
			player armour
				ifNil: [ armour contents: 'None  ' ]
				ifNotNil: [ armour contents: player armour asString,'  ' ].
			level contents: player level asString,'  '.
			exp contents: player exp asString,'  '.
			hp contents: player hp asString,'  '.
			ac contents: player ac asString ,'  ']