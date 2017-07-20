initialization
initialize
	| floor |
	super initialize.
	self load: 'images/normal.png' spriteWidth: 64 spritesPerRow: 8.
	tiles := Dictionary new.
	floor := spriteImages at: 15.
	tiles at: 'floor' put: floor.