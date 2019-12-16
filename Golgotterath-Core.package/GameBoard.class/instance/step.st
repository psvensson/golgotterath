event handler
step
	| animationsToRemove |
	animationsToRemove := runningAnimations
		select:
			[ :entity | entity animatedSprite getOldAnimation stepAnimation ].
	self stepWorld.
	animationsToRemove
		do: [ :entityToRemove | 
			self handlePostMoveFor: entityToRemove .
			runningAnimations remove: entityToRemove ].
	
	runningAnimations
		ifEmpty: [ worldAnimationFrame := 0.
			self stopStepping ].
	^ self