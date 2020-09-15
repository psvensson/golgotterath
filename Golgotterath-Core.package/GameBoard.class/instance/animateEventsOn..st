accessing
animateEventsOn: aCanvas
	events
		do: [ :event | 
			event drawOn: aCanvas.
			self changed ]