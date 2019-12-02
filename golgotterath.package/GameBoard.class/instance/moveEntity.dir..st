adding
moveEntity: entity dir: dir
	| target |	
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target) ifTrue: [ 
		entity animatedSprite setTargetForDirectionString: dir.		
		"Transcript show: 'moveEntity ',entity pos asString,' -> ',entity target asString;cr."
		entity = player ifTrue: [ 
			worldCoords := target.
			Transcript show: 'moveEntity setting worldcoords to ',worldCoords asString;cr.
		]
	].	
	self playAnimation: 'walk' for: entity.
	
	