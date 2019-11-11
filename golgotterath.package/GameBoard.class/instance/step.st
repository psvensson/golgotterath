accessing
step
	| animatinsToRemove |
	animatinsToRemove := 	runningAnimations select: [ :entity |
		(entity getOldAnimation) stepAnimation .	
	].
	self changed.
	animatinsToRemove do: [ :entityToRemove | 
		entities removeKey: (entityToRemove boardx@entityToRemove boardy).
		entityToRemove boardx: entityToRemove targetx; boardy: entityToRemove targety.
		entities at: (entityToRemove  boardx@entityToRemove boardy) put: entityToRemove .
		runningAnimations remove: entityToRemove  ] .
	runningAnimations ifEmpty: [ 
		self stopStepping ]