action
moveEntity: entity dir: dir
	| target |
	entity animatedSprite directionString: dir.
	target := GolUtil  getTargetForDirectionString: dir position: entity boardPosition .
	(self openFloorAt: target for: entity)
		ifTrue: [ self moveEntityToOpenPosition: entity target: target dir: dir ]
		ifFalse: [ self moveEntityToOccupiedPosition: entity target: target dir: dir ]