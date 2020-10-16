action
movePlayer: entity dir: dir
	| features |
	fireWeapon
		ifTrue: [ self launchProjectile: dir for: player.
			^ self ].
	openingDoor
		ifTrue: [ player openDoor: dir.
			self playAnimation: 'walk' for: player.
			^ self ].
	self moveEntity: player dir: dir.
	"gameboardFocus := player boardPosition ."
	self showWhatIsOnFloor: player boardPosition.
	self updateMinimap.
	"self gameMap tryToGrowDungeonFrom: player boardPosition."
	features := self gameMap featuresNearby: entity.
	features ifNotNil: [ features do: [ :each | each isNextTo: entity ] ]