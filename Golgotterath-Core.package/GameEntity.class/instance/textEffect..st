accessing
textEffect: text 
	| effect |
	effect := TextEffect new.
	effect color: Color green.
	effect text: text.
	gamemap gameboard
		addEffect: effect
		startPosition:
			(animatedSprite calculatePositionFromGameboard:
				  gamemap gameboard)