action
moveEntityToOpenPosition: entity target: target dir: dir
	entity
		isMoving: true;
		moveTo: target dir: dir.
	Transcript show:'player moved to ',target asString;cr.	
	self playAnimation: 'walk' for: entity