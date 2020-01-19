accessing
paint: gameboard at: aCanvas alpha: alpha
	self image alpha: alpha.
	self image
		position:
			(self calculatePositionFromGameboard: gameboard) + tileAdjustment;
		resize: self tileSize @ self tileSize;
		drawOn: aCanvas