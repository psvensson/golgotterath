event handler
mouseDown:  anEvent
	Transcript show:'mouseDown: ',anEvent asString;cr.
	inventoryShown ifTrue: [ ^self ].
	redMarker boardPosition: yellowMarker boardPosition .
	
	