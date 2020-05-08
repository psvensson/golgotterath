action
moveEntity: entity dir: dir
	| target |
	openingDoor
		ifTrue: [ entity openDoor: dir.
			self playAnimation: 'walk' for: entity.
			^ self ].
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target for: entity)
		ifTrue: [ entity animatedSprite setTargetForDirectionString: dir.
			Logger
				log: 'moveEntity ';
				log: entity name;
				log: ' direction: ';
				log: dir;
				cr.
			entity moveTo: target.
			self playAnimation: 'walk' for: entity.
			entity = player
				ifTrue: [ gameMap stepMap.
					self addMoveEffectFor: entity.
					worldLastPosition := player boardPosition.
					gameMap tryToGrowDungeonFrom: player boardPosition  ] ]
		ifFalse: [ gameMap
				entitiesAt: target
				ifAbsent: [ Logger
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
					entity attack: victim ] ]