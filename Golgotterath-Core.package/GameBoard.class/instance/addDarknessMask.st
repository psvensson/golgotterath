drawing
addDarknessMask
	darknessMask ifNil: [ self calculateDarkness  ].
	darknessMask position:  self position - ((player animatedSprite tileAdjustment) / 2 ).
	self addMorphFront: darknessMask.