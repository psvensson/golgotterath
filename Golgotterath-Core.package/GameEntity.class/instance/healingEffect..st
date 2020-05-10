accessing
healingEffect: amount 
	| effect |
	effect := TextEffect new.
	effect color: Color green.
	effect text: '+' , amount asString.
	gamemap gameboard
		addEffect: effect
		startPosition:
			(animatedSprite calculatePositionFromGameboard:
				  gamemap gameboard)