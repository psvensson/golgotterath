accessing
addEffect: effect
	effect startPosition: (animatedSprite calculatePositionFromGameboard: gamemap gameboard) .
	effects add: effect.