accessing
paint: gameboard
	| p c |
	image := self image.
	p := (self calculatePositionFromGameboard: gameboard)
		+ tileAdjustment.
	image position: p.
	self position: p.
	c := image copy.

	"resize: tileSizeH @ tileSizeV"
	^ c