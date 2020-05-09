action
moveEntityToOpenPosition: entity target: target dir: dir
	| item |
	entity animatedSprite setTargetForDirectionString: dir.
	Logger
		log: 'moveEntity ';
		log: entity name;
		log: ' direction: ';
		log: dir;
		cr.
	entity moveTo: target.
	item := gameMap itemAt: target ifAbsent: [ topbar text: ''. nil ].
	item ifNotNil: [ topbar text: 'You see a ',item longname,' on the floor' ].
	self playAnimation: 'walk' for: entity.
	entity = player
		ifFalse: [ ^ self ].
	gameMap stepMap.
	self addMoveEffectFor: entity.
	worldLastPosition := player boardPosition.
	gameMap tryToGrowDungeonFrom: player boardPosition