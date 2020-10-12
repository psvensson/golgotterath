animations
stepAndSelectRunningEffects
	effects isEmpty
		ifFalse: [ effects := effects
				select: [ :something | something animateAndCheckIfDone ].
			^ true ].
	^ false