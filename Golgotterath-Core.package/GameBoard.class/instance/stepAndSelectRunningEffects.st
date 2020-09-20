accessing
stepAndSelectRunningEffects
	^ effects
		select: [ :something | 
			| res |
			res := something animateAndCheckIfDone.
			res
				ifFalse: [  ].
			res ]