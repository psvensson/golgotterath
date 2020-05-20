action
moveEntityToOpenPosition: entity target: target dir: dir
	| item features |
	entity animatedSprite setTargetForDirectionString: dir.
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
	features ifNotNil: [ features do: [ :each | each isNextTo: entity ] ]