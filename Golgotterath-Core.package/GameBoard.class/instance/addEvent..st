accessing
addEvent: something
	Transcript show:'adding new event';cr.
	events add: something.
	self startStepping