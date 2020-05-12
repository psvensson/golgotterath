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
	item := self gameMap
		itemAt: target
		ifAbsent: [ topbar text: ''.
			nil ].
	item ifNotNil: [ topbar text: item longname ].
	self playAnimation: 'walk' for: entity.
	entity = player
		ifFalse: [ ^ self ].
	self updateMinimap.
	self gameMap stepMap.
	self addMoveEffectFor: entity.
	worldLastPosition := player boardPosition.
	self gameMap tryToGrowDungeonFrom: player boardPosition.
	features := self gameMap featuresNearby: entity.
	features ifNotNil: [ 
		Transcript show:'moveEntityToOpenPosition found ',features size asString,' nearby features';cr.
		features do: [ :each | each isNextTo: entity ] ]