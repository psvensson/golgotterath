initialization
update: gameboard
	| player weapon armour |
	player := gameboard player.
	player
		ifNotNil: [ player weapon
				ifNil: [ weapon := 'None' ]
				ifNotNil: [ weapon := player weapon asString ].
			player armour
				ifNil: [ armour := 'None' ]
				ifNotNil: [ armour := player armour asString ].
			text backgroundColor: Color darkGray.
			text color: Color white.
			text
				font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 20).
			text
				contents:
					' Level: ' , player level asString , '  Exp: ' , player exp asString
						, '  HP: ' , player hp asString , '  AC: ' , player ac asString
						, '    Weapon: ' , weapon , '    Armour: ' , armour ]