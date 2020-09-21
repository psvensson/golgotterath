action
launchProjectile: dir for: entity
	| midAirItem arrowSprite targetpos pos |
	entity animatedSprite setTargetForDirectionString: dir.
	pos := (entity animatedSprite
		calculatePositionFromGameboard: entity gamemap gameboard) + entity animatedSprite tileSize .
	projectileToFire
		ifNil: [ GolUtil
				addTextEffect: 'No projectile for weapon'
				position: pos
				color: Color white
				gamemap: gameMap.
			^ self ].
	midAirItem := MidAirItem new.
	arrowSprite := Sprite new image: (arrows tile: dir).	"projectileToFire sprite."
	targetpos := self
		getNearestTargetPosition: dir
		from: entity boardPosition.
	midAirItem
		gamemap: gameMap;
		referenceObject: projectileToFire;
		position: pos;
		sprite: arrowSprite;
		target: targetpos;
		direction: dir.
	self addEvent: midAirItem.
	self playAnimation: 'shoot' for: entity.
	fireWeapon := false