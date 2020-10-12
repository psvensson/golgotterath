animations
renderEffects
	effects do: [ :effect | self addMorphFront: effect paint ].
	events do: [ :event | self addMorphFront: event paint ]