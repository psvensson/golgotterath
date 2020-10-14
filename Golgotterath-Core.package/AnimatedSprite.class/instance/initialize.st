initialization
initialize
	super initialize .
	animations := Dictionary new.
	direction := 1.
	self tileSize: 256.
	scaleSize := 64.
	tileAdjustment := (-105)@(-50).
	self loadSpriteImage: (self spriteImage) spriteWidth: 256 spritesPerRow: 8.
	self initializeAnimations.	
	self name: self defaultName.