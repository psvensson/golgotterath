accessing
showWelcomeEffect
	| effect |
	effect := TextEffect new.
	effect
		text: 'Call of the Deep';
		color: Color blue;
		fontSize: 55.
	self
		addEffect: effect
		startPosition: self position + (self width / 2).
		