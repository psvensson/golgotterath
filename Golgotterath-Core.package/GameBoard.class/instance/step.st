accessing
step
	| animationsToRemove |
	animationsToRemove := 	runningAnimations select: [ :entity |
		(entity animatedSprite getOldAnimation) stepAnimation .	
	].
	self stepWorld.
	animationsToRemove do: [ :entityToRemove | 
		gameMap removeEntityAt: (entityToRemove boardPosition).
		gameMap addEntity: entityToRemove at: entityToRemove animatedSprite target.
		runningAnimations remove: entityToRemove  ] .
		boardDrawOffset := 0@0.
	runningAnimations ifEmpty: [ 
		worldAnimationFrame := 0.
		self stopStepping ].
	^ self