action
moveEntityToOpenPosition: entity target: target dir: dir
	| item features |
	entity animatedSprite setTargetForDirectionString: dir.
	"Logger
		log: 'moveEntity ';
		log: entity name;
		log: ' direction: ';
		log: dir;
		cr."
	entity moveTo: target.
	item := gameMap
		itemAt: target
		ifAbsent: [ topbar text: ''.
			nil ].
	item ifNotNil: [ topbar text: item longname ].
	self playAnimation: 'walk' for: entity.
	entity = player
		ifFalse: [ ^ self ].
	gameMap stepMap.
	self addMoveEffectFor: entity.
	worldLastPosition := player boardPosition.
	gameMap tryToGrowDungeonFrom: player boardPosition.
	features := gameMap featuresNearby: entity.
	features ifNotNil: [ 
		Transcript show:'moveEntityToOpenPosition found ',features size asString,' nearby features';cr.
		features do: [ :each | each isNextTo: entity ] ]