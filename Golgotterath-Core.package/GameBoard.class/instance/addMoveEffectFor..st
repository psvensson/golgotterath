accessing
addMoveEffectFor: entity
	| effect |
	effect := TextEffect new.
	effect
		text: 'bop';
		color: Color green.
	self
		addEffect: effect
		startPosition:
		(entity animatedSprite calculatePositionFromGameboard: self)