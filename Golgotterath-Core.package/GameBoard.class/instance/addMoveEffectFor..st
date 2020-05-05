action
addMoveEffectFor: entity
	| effect |
	effect := TextEffect new.
	effect
		text: 'Foo';
		color: Color green.
	self
		addEffect: effect
		startPosition:
		(entity animatedSprite calculatePositionFromGameboard: self)