accessing
step
	| animatinsToRemove |
	animatinsToRemove := 	runningAnimations select: [ :entity |
		(entity getOldAnimation) stepAnimation .	
	].
	self changed.
	animatinsToRemove do: [ :entityToRemove | 
		runningAnimations remove: entityToRemove ifAbsent: [
			Transcript show: 'unable to remove anim: not found';cr.] ] .
	runningAnimations ifEmpty: [ 
		self stopStepping ]