accessing
paint: gameboard at: aCanvas
 	(self image) position: (self calculatePositionFromGameboard: gameboard).
	(self image) resize: self tileSize @ self tileSize .
 	(self image) drawOn: aCanvas 