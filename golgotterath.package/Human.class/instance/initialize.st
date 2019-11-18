initialization
initialize
	| img |
	super initialize.
	direction := 1.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 256 spritesPerRow: 8.
	self addAnimation: (self createSpecifiedAnimation: 'walk' anims: #(2 3 4 1)).
	self addAnimation: (self createAnimation: 'hit' start: 4 end: 5).
	self addAnimation: (self createAnimation: 'shoot' start: 6 end: 6).
	self addAnimation: (self createAnimation: 'hurt' start: 7 end: 7).
	self addAnimation: (self createAnimation: 'die' start: 8 end: 8).
	self name: 'Human'.
	^ self.