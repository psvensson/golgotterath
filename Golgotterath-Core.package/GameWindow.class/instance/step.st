initialization
step 
	logoAlpha := logoAlpha - 0.1.
	logo alpha: logoAlpha .
	logoAlpha = 0 ifTrue: [ 
		self stopStepping .
		self removeMorph: logo ].