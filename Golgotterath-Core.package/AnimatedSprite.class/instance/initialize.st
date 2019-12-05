initialization
initialize
	super initialize .
	self borderColor: (Color blue alpha: 0).
	target := 0@0.
	animations := Dictionary new.
	direction := 1.
	self loadSpriteImage: (self spriteImage) spriteWidth: 256 spritesPerRow: 8.
	self initializeAnimations.	
	self name: self defaultName.