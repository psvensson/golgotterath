initialization
initialize 
	| floor |
	super initialize.
	self loadSpriteImage: (self imageSource)  spriteWidth: 64 spritesPerRow: 8.
	tiles := Dictionary new.
	floor := spriteImages at: 15.
	tiles at: 'floor' put: floor