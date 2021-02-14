initialization
play: animationName

	self removeAllMorphs.
	selectedAtLayer valuesDo: [ :sprite | 
		self addMorph: sprite.
		sprite
			direction: savedDirection;
			position: self position;
			play: animationName ]