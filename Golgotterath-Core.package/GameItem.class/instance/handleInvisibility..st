accessing
handleInvisibility: holder
	| effect |
	effect := InvisibilityEffect new.
	effect
		entity: holder;
		maxSteps: 10 * (attributes at: 'size') asNumber.
	holder effects add: effect.
	holder textEffect: 'You became invisible' color: Color lightBlue.