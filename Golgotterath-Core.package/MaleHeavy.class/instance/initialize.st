accessing
initialize
	| img |
	super initialize.
	direction := 1.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 256 spritesPerRow: 8.
	self initializeAnimations.
	self name: 'MaleHeavy'.
	^ self