initialization
initialize 
	| floor img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 64 spritesPerRow: 8.
	tiles := Dictionary new.
	floor := spriteImages at: 15.
	tiles at: 'floor' put: floor