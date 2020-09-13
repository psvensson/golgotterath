accessing
stepAndSelectRunningAnimations
	^ runningAnimations
		select: [ :something | 
			| res |
			res := something stepAnimation.
			res
				ifFalse: [ self handlePostMoveFor: something ].
			res ]