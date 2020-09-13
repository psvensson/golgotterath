action
moveEntityToOccupiedPosition: entity target: target dir: dir
	self gameMap
		entityAt: target
		ifAbsent: [ | feature |
			feature := self gameMap featureAt: target.
			"Transcript show:'unoccupied position feature found: ',feature asString;cr."
			feature ifNotNil: [ (feature at: 1) activatedBy: entity ] ]
		ifPresent: [ :victim | 
			Logger
				log: 'moveEntity attacking target..';
				cr.
			self playAnimation: 'hit' for: entity.
			entity attack: victim ]