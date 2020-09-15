accessing
referenceObject: anObject
	referenceObject := anObject.
	position := GolUtil
		calculatePositionFromGameboard: gamemap gameboard
		position: anObject boardPosition