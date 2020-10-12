initialization
initialize 
	| img |
	super initialize.
	hoffset := 32.
	voffset := 32.
	tileSize := 64.
	scaleSize := 16.
	tileAdjustment := 55@(25).
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 10 offset: 32.
	tiles := Dictionary new.
	tiles at: 'orange_robe' put: (spriteImages at: 1).
	tiles at: 'blue_robe' put: (spriteImages at: 11).
	tiles at: 'yellow_robe' put: (spriteImages at: 21).
	tiles at: 'leather_helmet' put: (spriteImages at: 91).
	tiles at: 'brass_helmet' put: (spriteImages at: 2).
	tiles at: 'iron_helmet' put: (spriteImages at: 12).
	tiles at: 'steel_helmet' put: (spriteImages at: 22).
	tiles at: 'mithril_helmet' put: (spriteImages at: 32).
	tiles at: 'leather_armour' put: (spriteImages at: 84).
	tiles at: 'studded_leather_armour' put: (spriteImages at: 94).
	tiles at: 'brass_scale_armour' put: (spriteImages at: 25).
	tiles at: 'iron_scale_armour' put: (spriteImages at: 35).
	tiles at: 'chain_mail' put: (spriteImages at: 55).
	tiles at: 'plate_mail' put: (spriteImages at: 85).
	tiles at: 'mithril_mail' put: (spriteImages at: 56).