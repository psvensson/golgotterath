accessing
paint: gameboard at: aCanvas
 	(self image) position: (self calculatePositionFromGameboard: gameboard)
		+ (tileadjustx@tileadjusty).
	(self image) resize: self tileSize @ self tileSize .
 	(self image) drawOn: aCanvas 