action
moveEntityToOpenPosition: entity target: target dir: dir
	| features |
	entity moveTo: target dir: dir.
	self showWhatIsOnFloor: target.
	self playAnimation: 'walk' for: entity.
	entity = player
		ifFalse: [ ^ self ].
	self updateMinimap.
	worldLastPosition := player animatedSprite target.
	self gameMap tryToGrowDungeonFrom: player boardPosition.
	features := self gameMap featuresNearby: entity.
	features ifNotNil: [ features do: [ :each | each isNextTo: entity ] ]