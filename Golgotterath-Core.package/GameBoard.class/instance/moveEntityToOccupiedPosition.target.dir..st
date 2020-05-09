action
moveEntityToOccupiedPosition: entity target: target dir: dir
	gameMap
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
					entity attack: victim ]