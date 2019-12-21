initialization
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 17 offset: 32.
	tiles := Dictionary new.
	tiles at: 'small_wooden_chest' put: (spriteImages at: 1).
	tiles at: 'copper_pieces' put: (spriteImages at: 2).
	tiles at: 'blue_crystal' put: (spriteImages at: 3).