accessing
textEffect: text color: color
	| effect |
	effect := TextEffect new.
	effect color: color.
	effect text: text.
	gamemap gameboard
		addEffect: effect
		startPosition:
			(animatedSprite calculatePositionFromGameboard:
				  gamemap gameboard boardPosition: self boardPosition)