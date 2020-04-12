event handler
step
	| animationsToRemove |
	runningAnimations
		ifNotNil: [ animationsToRemove := runningAnimations
				select:
					[ :entity | "self changed." entity animatedSprite getOldAnimation stepAnimation ].
			self stepWorld.
			animationsToRemove
				do: [ :entityToRemove | 
					self handlePostMoveFor: entityToRemove.
					runningAnimations remove: entityToRemove ].
			runningAnimations
				ifEmpty: [ worldAnimationFrame := 0.
					self stopStepping ] ].
	^ self