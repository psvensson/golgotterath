accessing
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	name := 'doorsprite'.
	self loadSpriteImage: img spriteWidth: 64 spritesPerRow: 12.
	"closed"
	stateImages at: 0 put: (spriteImages at: 3).
	"open"
	stateImages at: 1 put: (spriteImages at: 1).
	