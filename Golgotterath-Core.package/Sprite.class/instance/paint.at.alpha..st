accessing
paint: gameboard at: aCanvas alpha: alpha
	| p |
	self image alpha: alpha.
	p := (self calculatePositionFromGameboard: gameboard)
		+ tileAdjustment.
	self image
		position: p;
		"resize: tileSizeH @ tileSizeV;"
			drawOn: aCanvas