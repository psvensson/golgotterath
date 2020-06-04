initialization
initialize 
	| img |
	super initialize.
	"tileSizeV := 64.
	tileSizeH := 64."
	hoffset := 64.
	voffset := 32.
	tileAdjustment := (0)@(64).
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 64 spriteHeight: 32 spritesPerRow: 4.
	tiles := Dictionary new.	
	tiles at: 'cr_floor1' put: (spriteImages at: 1).
	tiles at: 'cr_floor2' put: (spriteImages at: 5).
	tiles at: 'cr_floor3' put: (spriteImages at: 9).
	tiles at: 'cr_floor4' put: (spriteImages at: 13).
	tiles at: 'cr_floor5' put: (spriteImages at: 17).