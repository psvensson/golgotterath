accessing
stepAndSelectRunningAnimations
	^ runningAnimations
		select: [ :entity | 
			| res |
			res := entity stepAnimation.
			res
				ifFalse: [ 
					
					self handlePostMoveFor: entity ].
			res ]