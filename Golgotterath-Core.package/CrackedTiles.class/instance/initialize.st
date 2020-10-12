initialization
initialize 
	| img |
	super initialize.
	"tileSizeV := 64.
	tileSizeH := 64."
	hoffset := 64.
	voffset := 32.
	tileAdjustment := (64)@(64).
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: hoffset spriteHeight: voffset spritesPerRow: 4.
	tiles := Dictionary new.	
	tiles at: 'cr_floor1' put: (spriteImages at: 1).
	tiles at: 'cr_floor2' put: (spriteImages at: 5).
	tiles at: 'cr_floor3' put: (spriteImages at: 9).
	tiles at: 'cr_floor4' put: (spriteImages at: 13).
	tiles at: 'cr_floor5' put: (spriteImages at: 17).
	tiles at: 'cr_floor6' put: (spriteImages at: 2).
	tiles at: 'cr_floor7' put: (spriteImages at: 6).
	tiles at: 'cr_floor8' put: (spriteImages at: 10).
	tiles at: 'cr_floor9' put: (spriteImages at: 14).
	tiles at: 'cr_floor10' put: (spriteImages at: 18).
	tiles at: 'cr_brokenfloor1' put: (spriteImages at: 3).
	tiles at: 'cr_brokenfloor2' put: (spriteImages at: 7).
	tiles at: 'cr_brokenfloor3' put: (spriteImages at: 11).
	tiles at: 'cr_scorchedfloor1' put: (spriteImages at: 14).
	tiles at: 'cr_scorchedfloor2' put: (spriteImages at: 17).
	tiles at: 'cr_plankfloor1' put: (spriteImages at: 4).
	tiles at: 'cr_plankfloor2' put: (spriteImages at: 8).