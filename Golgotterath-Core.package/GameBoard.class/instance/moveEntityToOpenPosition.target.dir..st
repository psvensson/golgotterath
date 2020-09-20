action
moveEntityToOpenPosition: entity target: target dir: dir
	| features |
	entity moveTo: target dir: dir.
	self showWhatIsOnFloor: target.
	self playAnimation: 'walk' for: entity.
	
	