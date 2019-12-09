adding
moveEntity: entity dir: dir
	| target |	
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target) ifTrue: [ 
		entity animatedSprite setTargetForDirectionString: dir.
		Logger log: 'moveEntity ';log:entity name;log: ' ';log: dir;cr.
		entity = player ifTrue: [ 
			gameMap stepMap.
			worldCoords := target.
			Logger log: 'moveEntity setting worldcoords to '; log:worldCoords;cr.
		]
	] ifFalse: [
		Logger log: 'moveEntity ';log:entity name;log:' Could not move ';
		log: dir;log:' target is: ';log:entity animatedSprite target;cr.
	].	
	self playAnimation: 'walk' for: entity
	
	