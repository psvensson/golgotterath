initialization
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 10 offset: 32.
	tiles := Dictionary new.
	tiles at: 'short_sword' put: (spriteImages at: 2).