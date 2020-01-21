accessing
addPickupEffectFor: entity and: item
	| effect |
	effect := TextEffect new.
	effect
		text: 'Picked up ',(item longname);
		color: Color green.
	self
		addEffect: effect
		startPosition:
		(entity animatedSprite calculatePositionFromGameboard: self)