accessing
getSpritePosition

	^ (animatedSprite
		  calculatePositionFromGameboard: gamemap gameboard
		  boardPosition: boardPosition) - animatedSprite tileAdjustment 