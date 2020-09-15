initialization
initialize
	super initialize.
	"bounds := Rectangle center: 0@0 extent: 100@100."
	submorphs := OrderedCollection new.
	fontSize := 13.
	textMorph := StringMorph new.
	self addMorph: textMorph.
	textMorph contents:'foobar'