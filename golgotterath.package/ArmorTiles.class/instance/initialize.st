initialization
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 10 offset: 32.
	tiles := Dictionary new.
	tiles at: 'orange_robe' put: (spriteImages at: 1).
	tiles at: 'blue_robe' put: (spriteImages at: 11).
	tiles at: 'yellow_robe' put: (spriteImages at: 21).