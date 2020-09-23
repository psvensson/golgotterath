initialization
update: gameboard
	| player |
	"Transcript show:'gamebar update ... position = ',self position asString;cr."
	self text: ''.
	player := gameboard player.
	player
		ifNotNil: [ player weapon
				ifNil: [ weapon contents: 'None  ' ]
				ifNotNil: [ weapon contents: player weapon asString , '  ' ].
			player armour
				ifNil: [ armour contents: 'None  ' ]
				ifNotNil: [ armour contents: player armour asString , '  ' ].
			level contents: player level asString , '  '.
			exp contents: player exp asString , '  '.
			hp contents: player hp asString , '  '.
			ac contents: player ac asString , '  ' ].
	"statusField top: 0;left:0.
	textField top:0;left:200."
	self
		
		color: Color transparent;
		changed