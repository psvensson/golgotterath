event handler
step
	| animationsToRemove |
	animationsToRemove := runningAnimations
		select:
			[ :entity | entity animatedSprite getOldAnimation stepAnimation ].
	self stepWorld.
	animationsToRemove
		do: [ :entityToRemove | 
			| target |
			target := entityToRemove animatedSprite target.
			target
				ifNotNil: [ gameMap removeEntityAt: entityToRemove boardPosition.
					entityToRemove hp > 0
						ifTrue: [ 
							gameMap addEntity: entityToRemove at: target ] ].
			runningAnimations remove: entityToRemove ].
	boardDrawOffset := 0 @ 0.
	runningAnimations
		ifEmpty: [ worldAnimationFrame := 0.
			self stopStepping ].
	^ self