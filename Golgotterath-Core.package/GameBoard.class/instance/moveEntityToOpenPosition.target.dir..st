action
moveEntityToOpenPosition: entity target: target dir: dir
	entity
		isMoving: true;
		moveTo: target dir: dir.
	self playAnimation: 'walk' for: entity