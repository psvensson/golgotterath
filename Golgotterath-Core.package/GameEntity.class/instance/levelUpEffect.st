accessing
levelUpEffect
	| effect |
	effect := TextEffect new.
	effect color: Color green; fontSize: 25; text: '* Level Up *'.
	gamemap gameboard soundBoard play: 'gold1'.
	gamemap gameboard
		addEffect: effect
		startPosition:
			(animatedSprite calculatePositionFromGameboard:
				  gamemap gameboard)