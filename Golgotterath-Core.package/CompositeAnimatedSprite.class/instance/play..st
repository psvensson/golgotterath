initialization
play: animationName

	self removeAllMorphs.
	selectedAtLayer valuesDo: [ :sprite | 
		self addMorph: sprite.
		sprite play: animationName ]