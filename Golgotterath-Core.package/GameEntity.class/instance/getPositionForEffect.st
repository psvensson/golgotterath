accessing
getPositionForEffect

	^ self animatedSprite
		  calculatePositionFromGameboard: self gamemap gameboard
		  boardPosition: self boardPosition