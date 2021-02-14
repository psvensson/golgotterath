accessing
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	name := 'doorsprite'.
	state := 3.
	
	hoffset := 91.
	voffset := 102.
	tileAdjustment := 0@(-15).
	self loadSpriteImage: img spriteWidth: 91 spriteHeight: 102 spritesPerRow: 12.	
	"closed"
	stateImages at: 1 put: (spriteImages at: 3).
	"open"
	stateImages at: 2 put: (spriteImages at: 1).
	"open rotated"
	stateImages at: 3 put: (spriteImages at: 2).
	"closed rotated"
	stateImages at: 4 put: (spriteImages at: 4).
	
	