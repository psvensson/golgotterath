accessing
paint: gameboard at: aCanvas
	
	self image
		position:
			(self calculatePositionFromGameboard: gameboard) + tileAdjustment;
		"resize: tileSizeH @ tileSizeV"
		drawOn: aCanvas