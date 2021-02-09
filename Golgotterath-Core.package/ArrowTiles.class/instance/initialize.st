initialization
initialize 
	| img |
	super initialize.
	tileSize := 48.
	"hoffset := 64.
	voffset := 32."
	tileAdjustment := (0)@(0).
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 64 spriteHeight: 64 spritesPerRow: 8.
	tiles := Dictionary new.	
	tiles at: 'right' put: (spriteImages at: 1).
	tiles at: 'downright' put: (spriteImages at: 2).
	tiles at: 'down' put: (spriteImages at: 3).
	tiles at: 'downleft' put: (spriteImages at: 4).
	tiles at: 'left' put: (spriteImages at: 5).
	tiles at: 'upleft' put: (spriteImages at: 6).
	tiles at: 'up' put: (spriteImages at: 7).
	tiles at: 'upright' put: (spriteImages at: 8).
	
	