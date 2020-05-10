action
moveEntity: entity dir: dir
	| target |
	openingDoor
		ifTrue: [ entity openDoor: dir.
			self playAnimation: 'walk' for: entity.
			^ self ].
	entity animatedSprite directionString: dir.
	target := entity animatedSprite getTargetForDirectionString: dir.
	(self openFloorAt: target for: entity)
		ifTrue: [ self moveEntityToOpenPosition: entity target: target dir: dir ]
		ifFalse: [ self moveEntityToOccupiedPosition: entity target: target dir: dir ]
