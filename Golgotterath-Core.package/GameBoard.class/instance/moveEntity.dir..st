action
moveEntity: entity dir: dir
	| target |
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target)
		ifTrue: [ entity animatedSprite setTargetForDirectionString: dir.
			Logger
				log: 'moveEntity ';
				log: entity name;
				log: ' ';
				log: dir;
				cr.
			soundBoard play: 'walk5'.
			self playAnimation: 'walk' for: entity.
			entity = player
				ifTrue: [ self movePlayerTo: target ] ]
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
					self playAnimation: 'hit' for: entity.
					self attacker: entity attacks: victim ] ]