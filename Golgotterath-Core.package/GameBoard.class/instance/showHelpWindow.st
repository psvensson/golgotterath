accessing
showHelpWindow
	Transcript show:'showing help window';cr.
	helpWindow position: self position + (100@100) .
	self addMorph: helpWindow