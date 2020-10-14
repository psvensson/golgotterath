action
movePlayer: entity dir: dir
	| features |
	"Transcript show:'movePlayer ',dir;cr."
	player isMoving
		ifFalse: [ entity player
				ifTrue: [ fireWeapon
						ifTrue: [ self launchProjectile: dir for: entity.
							^ self ].
					openingDoor
						ifTrue: [ entity openDoor: dir.
							self playAnimation: 'walk' for: entity.
							^ self ] ] ].
	"handlePostMove sets playerIsMoving to false again"
	"player isMoving: true."
	self moveEntity: player dir: dir.
	boardDrawOffset := 0@0.
	gameboardFocus := player visiblePosition .
	self showWhatIsOnFloor: player boardPosition.
	self updateMinimap.
	"self gameMap tryToGrowDungeonFrom: player boardPosition."
	features := self gameMap featuresNearby: entity.
	features ifNotNil: [ features do: [ :each | each isNextTo: entity ] ]