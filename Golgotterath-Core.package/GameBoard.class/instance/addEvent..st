animations
addEvent: something
	Transcript show:'adding new event';cr.
	events add: something.
	self addMorph: something sprite image.
	self startStepping