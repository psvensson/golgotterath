accessing
massageImage: img gameboard: gameboard boardPosition: boardPosition
	| scaleFactor resizeside extentside position |
	position := self
		calculatePositionFromGameboard: gameboard
		boardPosition: boardPosition.
	scaleFactor := gameboard scaleFactor.
	extentside := (scaleFactor * self scaleSize) asInteger.
	resizeside := (scaleFactor * self tileSize) asInteger.
	img
		resize: resizeside @ resizeside;
		extent: extentside @ extentside;
		borderWidth: 0;
		borderColor: Color transparent ;
		"color: Color transparent;"
		position: position	.
	^ img copy