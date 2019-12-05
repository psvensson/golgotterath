initialization
update: gameboard
	| player |
	player := gameboard player.
	text backgroundColor: (Color darkGray ).
	text color: (Color white).
	text font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 20).
	text contents: 
		' Level: ',player level asString,'  Exp: ',player exp asString,
		'  HP: ',player hp asString,'  AC: ',player ac asString