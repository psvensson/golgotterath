accessing
initialize
	super initialize.
	"submorphs := OrderedCollection new."
	"self fillStyle: CompositeFillStyle new."
	self color: Color transparent.
	base := 150 @ 150.
	"bounds := Rectangle center: base extent: 300 @ 300."
	"self computeFullBounds ."
	scale := 3.
	