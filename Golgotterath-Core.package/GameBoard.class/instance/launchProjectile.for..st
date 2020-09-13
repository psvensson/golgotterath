action
launchProjectile: dir for: entity
	| midAirItem |
	projectileToFire
		ifNil: [ GolUtil
				addTextEffect: 'No projectile for weapon'
				position:
					(entity animatedSprite
						calculatePositionFromGameboard: entity gamemap gameboard)
				color: Color white
				gamemap: gameMap.
			^ self ].
	midAirItem := MidAirItem new.
	midAirItem
		referenceObject: projectileToFire;
		direction: dir.
	gameMap midAirEvents add: midAirItem.
	self playAnimation: 'shoot' for: entity.
	fireWeapon := false