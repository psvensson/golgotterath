accessing
paint: gameboard at: aCanvas
 	(self image) position: (self calculatePositionFromGameboard: gameboard)
		+ tileAdjustment;
	resize: self tileSize @ self tileSize;
 	drawOn: aCanvas 