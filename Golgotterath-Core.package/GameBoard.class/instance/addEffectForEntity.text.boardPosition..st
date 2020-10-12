animations
addEffectForEntity: entity text: text boardPosition: boardPosition
	| effect |
	effect := TextEffect new.
	effect
		text: text;
		color: Color green.
	self
		addEffect: effect
		startPosition:
		(entity animatedSprite calculatePositionFromGameboard: self boardPosition: boardPosition);
		addMorphFront: effect.
	self startStepping	