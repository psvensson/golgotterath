accessing enum
play
	shownFrame ifNotNil: [ self removeMorph: shownFrame  ].
	shownFrame := self currentFrame .
	self addMorph: shownFrame .
	
	Transcript show:'Animation ',name,' playing ',type,' with ',stepTime asString,' duration';cr.
	self startStepping.
	
	