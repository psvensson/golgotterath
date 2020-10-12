animations
animateEffects
	effects isEmpty
		ifTrue: [ ^ self ].
	effects := effects
		select: [ :effect | 
			| res |
			res := effect animateAndCheckIfDone.
			res
				ifTrue: [ self removeMorph: effect ].
			res ].
	self changed