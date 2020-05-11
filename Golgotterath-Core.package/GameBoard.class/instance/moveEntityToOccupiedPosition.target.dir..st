action
moveEntityToOccupiedPosition: entity target: target dir: dir	
	self gameMap
		entitiesAt: target
		ifAbsent: [ | feature |
			feature := (self gameMap featureAt: target) .
			Transcript show:'unoccupied position feature found: ',feature asString;cr.
			feature ifNotNil: [ (feature at: 1) activatedBy: entity ].
			Logger
				log: 'moveEntity ';
				log: entity name;
				log: ' Could not move ';
				log: dir;
				log: ' target is: ';
				log: entity animatedSprite target;
				cr ]
		ifPresent: [ :victim | 
			Logger
				log: 'moveEntity attacking target..';
				cr.
			self playAnimation: 'hit' for: entity.
			entity attack: victim ]