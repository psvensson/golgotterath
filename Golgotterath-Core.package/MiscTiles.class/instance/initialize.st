initialization
initialize 
	| img |
	super initialize.
	hoffset := 32.
	voffset := 32.
	tileSizeV := 64.
	tileSizeH := 64.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 17 offset: 32.
	tiles := Dictionary new.
	tiles at: 'small_wooden_chest' put: (spriteImages at: 1).
	tiles at: 'lage_wooden_chest' put: (spriteImages at: 18).
	tiles at: 'small_iron_chest' put: (spriteImages at: 35).
	tiles at: 'large_iron_chest' put: (spriteImages at: 52).
	tiles at: 'copper_pieces' put: (spriteImages at: 2).
	tiles at: 'silver_pieces' put: (spriteImages at: 19).
	tiles at: 'gold_pieces' put: (spriteImages at: 36).
	tiles at: 'platinum_pieces' put: (spriteImages at: 53).
	tiles at: 'blue_crystal' put: (spriteImages at: 3).
	tiles at: 'rubies' put: (spriteImages at: 20).
	tiles at: 'sapphires' put: (spriteImages at: 37).
	tiles at: 'emeralds' put: (spriteImages at: 54).
	tiles at: 'pickaxe' put: (spriteImages at: 106).
	tiles at: 'wooden_sticks' put: (spriteImages at: 7).
	tiles at: 'skull' put: (spriteImages at: 24).
	tiles at: 'bones' put: (spriteImages at: 31).
	tiles at: 'skeletal_remains' put: (spriteImages at: 38).
	tiles at: 'cadaver' put: (spriteImages at: 45).
	tiles at: 'corpse' put: (spriteImages at: 52).
	