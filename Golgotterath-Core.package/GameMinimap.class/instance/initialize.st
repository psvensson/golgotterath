accessing
initialize
	super initialize.
	"submorphs := OrderedCollection new."
	"self fillStyle: CompositeFillStyle new."
	self color: Color transparent.
	base := 120 @ 120.
	"bounds := Rectangle center: base extent: 300 @ 300."
	"self computeFullBounds ."
	scale := 3.
	Transcript
		show:
			'======================================================= Minimap created';
		cr