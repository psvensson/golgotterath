adding
moveEntity: entity dir: dir
	| target |
	
	entity directionString: dir.
	target := entity getTargetForDirectionString: dir.
	(self openFloorAt: target) ifTrue: [ 
		entity setTargetForDirectionString: dir.		
		"Transcript show: 'moveEntity ',entity pos asString,' -> ',entity target asString;cr."
		entity = player ifTrue: [ 
			worldCoords := target.
		]
	].	
	self addRunningAnimation: entity.
	entity play: 'walk'.
	
	