action
moveEntity: entity dir: dir
	| target |
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target for: entity)
		ifTrue: [ entity animatedSprite setTargetForDirectionString: dir.
			Logger	log: 'moveEntity ';log: entity name;log: ' ';log: dir;	cr.
			"gameMap moveTargets at: target put: entity.	"
			entity moveTo: target.				
			self playAnimation: 'walk' for: entity.
			entity = player
				ifTrue: [ 
					gameMap stepMap.
					worldLastPosition := player boardPosition  ] ]
		ifFalse: [ gameMap
				entitiesAt: target
				ifAbsent: [ Logger	log: 'moveEntity ';log: entity name;log: ' Could not move ';
									log: dir;	log: ' target is: ';log: entity animatedSprite target;	cr ]
				ifPresent: [ :victim | 
					self playAnimation: 'hit' for: entity.
					entity attack: victim ] ]