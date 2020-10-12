accessing
paint: gameboard boardPosition: boardPosition
	| animation img |
	animation := self getOldAnimation.
	animation currentFrame
		ifNotNil: [ img := animation currentFrame .
			"img inspect."
			^ self
				massageImage: img
				gameboard: gameboard
				boardPosition: boardPosition ]