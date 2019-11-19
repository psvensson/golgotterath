accessing
initialize
	| img |
	super initialize.
	direction := 1.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 256 spritesPerRow: 8.
	self addAnimation: (self createSpecifiedAnimation: 'walk' anims: #(3 4 1 2)).
	self addAnimation: (self createSpecifiedAnimation: 'hit' anims: #(4 5 1)).
	self addAnimation: (self createSpecifiedAnimation: 'shoot' anims: #(6 1)).
	self addAnimation: (self createSpecifiedAnimation: 'hurt' anims: #(7 1)).
	self addAnimation: (self createAnimation: 'die' start: 8 end: 8).
	self name: 'Skeleton'.
	^ self.