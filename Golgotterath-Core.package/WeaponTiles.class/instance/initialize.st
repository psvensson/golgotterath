initialization
initialize 
	| img |
	super initialize.
	hoffset := 32.
	voffset := 32.
	tileSizeV := 64.
	tileSizeH := 64.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 10 offset: 32.
	tiles := Dictionary new.
	tiles at: 'short_sword' put: (spriteImages at: 2).
	tiles at: 'dagger' put: (spriteImages at: 31).
	tiles at: 'rapier' put: (spriteImages at: 51).
	tiles at: 'long_sword' put: (spriteImages at: 22).
	tiles at: 'bastard_sword' put: (spriteImages at: 32).
	tiles at: 'mace' put: (spriteImages at: 3).
	tiles at: 'axe' put: (spriteImages at: 54).
	tiles at: 'flail' put: (spriteImages at: 23).
	tiles at: 'crossbow' put: (spriteImages at: 7).
	tiles at: 'short_bow' put: (spriteImages at: 35).
	tiles at: 'long_bow' put: (spriteImages at: 45).
	tiles at: 'arrow' put: (spriteImages at: 95).
	tiles at: 'bolt' put: (spriteImages at: 16).
	tiles at: 'war_hammer' put: (spriteImages at: 92).