accessing
paint: gameboard boardPosition: boardPosition
	image := self image.
	^ self
		massageImage: image
		gameboard: gameboard
		boardPosition: boardPosition