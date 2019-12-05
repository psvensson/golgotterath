adding
moveEntity: entity dir: dir
	| target |	
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target) ifTrue: [ 
		entity animatedSprite setTargetForDirectionString: dir.
		entity = player ifTrue: [ 
			gameMap stepMap.
			worldCoords := target.
			Logger log: 'moveEntity setting worldcoords to '; log:worldCoords;cr.
		]
	].	
	self playAnimation: 'walk' for: entity
	
	