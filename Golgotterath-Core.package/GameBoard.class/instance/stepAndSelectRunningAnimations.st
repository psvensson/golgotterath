animations
stepAndSelectRunningAnimations
	"Transcript show: '--- stepAndSelectRunningAnimations';cr."

	runningAnimations isEmpty
		ifFalse: [ runningAnimations := runningAnimations
				select: [ :entity | 
					| res |
					res := entity stepAnimation: worldAnimationFrame.
					res
						ifFalse: [ self handlePostMoveFor: entity ].
					res ].
			^ true ].
	^ false