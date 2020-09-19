drawing
renderEffects
	effects
		do: [ :effect | 
			Transcript
				show: 'showing effect ';
				cr.
			self addMorphFront: effect paint ].
	events
		do: [ :event | 
			Transcript
				show: 'showing event ';
				cr.
			self addMorphFront: event paint ]