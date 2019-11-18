accessing
step
	| animationsToRemove |
	animationsToRemove := 	runningAnimations select: [ :entity |
		(entity getOldAnimation) stepAnimation .	
	].
	self stepWorld.
	animationsToRemove do: [ :entityToRemove | 
		gameMap removeEntityAt: (entityToRemove boardpos).
		gameMap addEntity: entityToRemove at: entityToRemove target.
		runningAnimations remove: entityToRemove  ] .
		boardDrawOffset := 0@0.
	runningAnimations ifEmpty: [ 
		worldAnimationFrame := 0.
		self stopStepping ].
	^ self