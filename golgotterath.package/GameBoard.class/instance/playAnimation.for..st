accessing
playAnimation: animName for: entity
	self addRunningAnimation: entity.
	entity animatedSprite play: animName .