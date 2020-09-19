action
addEffectForEntity: entity text: text
	| effect |
	effect := TextEffect new.
	effect
		text: text;
		color: Color green.
	self
		addEffect: effect
		startPosition:
		(entity animatedSprite calculatePositionFromGameboard: self);
		addMorphFront: effect.
	self startStepping	