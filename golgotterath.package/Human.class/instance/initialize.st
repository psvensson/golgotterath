initialization
initialize
	| walk hit shoot hurt die img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 256 spritesPerRow: 8.
	walk := self createAnimation: 'walk' start: 1 end: 4.
	self addAnimation: walk.
	hit := self createAnimation: 'hit' start: 4 end: 5.
	self addAnimation: hit.
	shoot := self createAnimation: 'shoot' start: 6 end: 6.
	self addAnimation: shoot.
	hurt := self createAnimation: 'hurt' start: 7 end: 7.
	self addAnimation: hurt.
	die := self createAnimation: 'die' start: 8 end: 8.
	self addAnimation: die