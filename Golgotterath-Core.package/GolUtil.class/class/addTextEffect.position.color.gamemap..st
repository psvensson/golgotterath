testing
addTextEffect: text position: pos color: color gamemap: gamemap
	| effect |
	effect := TextEffect new.
	effect
		color: Color red;
		fontSize: 15.
	effect text: '-' , text.
	gamemap gameboard addEffect: effect startPosition: pos + (50 @ 0)