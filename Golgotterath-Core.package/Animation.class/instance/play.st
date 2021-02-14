accessing enum
play
	shownFrame ifNotNil: [ self removeMorph: shownFrame  ].
	shownFrame := self currentFrame .
	self addMorph: shownFrame .
	stepTime := duration / frames size.
	Transcript show:'Animation ',name,' playing with ',stepTime asString,' duration';cr.
	self startStepping.
	
	