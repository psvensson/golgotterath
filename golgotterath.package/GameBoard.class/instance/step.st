accessing
step
	| animatinsToRemove |
	animatinsToRemove := 	runningAnimations select: [ :entity |
		(entity getOldAnimation) stepAnimation .	
	].
	self changed.
	animatinsToRemove do: [ :entityToRemove | 
		gameMap removeEntityAt: (entityToRemove boardx@entityToRemove boardy).
		gameMap addEntity: entityToRemove at: entityToRemove targetx @ entityToRemove targety .
		runningAnimations remove: entityToRemove  ] .
	runningAnimations ifEmpty: [ 
		self stopStepping ]