access
initializeAnimations
	animations := Dictionary new.
	direction := 1.
	self tileSize: 256.
	scaleSize := 64.
	tileAdjustment := (-105)@(-35).
	self loadSpriteImage: (self spriteImage) spriteWidth: 256 spritesPerRow: 8.
	self
		addAnimation: (self createSpecifiedAnimation: 'walk' anims: #(3 4 1 2)).
	self
		addAnimation: (self createSpecifiedAnimation: 'hit' anims: #(4 5 1)).
	self
		addAnimation: (self createSpecifiedAnimation: 'shoot' anims: #(6 1)).
	self
		addAnimation: (self createSpecifiedAnimation: 'hurt' anims: #(7 1)).
	self addAnimation: (self createAnimation: 'die' start: 8 end: 8)