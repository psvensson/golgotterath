accessing
animateEvents
	events
		do: [ :event | 
			event animate.
			self changed ]