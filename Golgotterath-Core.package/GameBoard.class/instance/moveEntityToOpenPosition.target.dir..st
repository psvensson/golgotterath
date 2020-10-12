action
moveEntityToOpenPosition: entity target: target dir: dir
	entity moveTo: target dir: dir.
	self playAnimation: 'walk' for: entity