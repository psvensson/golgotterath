action
moveEntityToOpenPosition: entity target: target dir: dir
	| features |
	entity animatedSprite setTargetForDirectionString: dir.
	entity moveTo: target.
	self showWhatIsOnFloor: target.
	self playAnimation: 'walk' for: entity.
	entity = player
		ifFalse: [ ^ self ].
	self updateMinimap.
	"self gameMap stepMap."
	worldLastPosition := player boardPosition.
	self gameMap tryToGrowDungeonFrom: player boardPosition.
	features := self gameMap featuresNearby: entity.
	features ifNotNil: [ features do: [ :each | each isNextTo: entity ] ]