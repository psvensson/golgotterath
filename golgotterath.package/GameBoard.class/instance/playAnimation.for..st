accessing
playAnimation: animName for: entity
	self addRunningAnimation: entity.
	entity play: animName .