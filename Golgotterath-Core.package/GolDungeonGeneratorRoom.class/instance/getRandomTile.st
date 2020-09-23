accessing
getRandomTile
	| keys key|
	keys := floor keys.	
	key := keys at: (keys size atRandom ).	
	^ key