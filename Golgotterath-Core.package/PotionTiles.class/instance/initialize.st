initialization
initialize 
	| img |
	super initialize.
	hoffset := 32.
	voffset := 32.
	tileSize := 32.
	scaleSize := 16.
	tileAdjustment := 35@(15).
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 32 spritesPerRow: 17 offset: 32.
	tiles := Dictionary new.
	tiles at: 'invisibility_potion' put: (spriteImages at: 41).
	tiles at: 'small_healing_potion' put: (spriteImages at: 42).
	tiles at: 'large_healing_potion' put: (spriteImages at: 8).
	tiles at: 'small_mana_potion' put: (spriteImages at: 2).
	tiles at: 'large_mana_potion' put: (spriteImages at: 25).
	tiles at: 'cure_posion_potion' put: (spriteImages at: 3).
	tiles at: 'infra_vision_potion' put: (spriteImages at: 5).
	tiles at: 'speed_potion' put: (spriteImages at: 7).
	tiles at: 'increase_strength_potion' put: (spriteImages at: 9).
	tiles at: 'increase_dexterity_potion' put: (spriteImages at: 10).
	tiles at: 'increase_constitution_potion' put: (spriteImages at: 11).
	tiles at: 'increase_intelligence_potion' put: (spriteImages at: 12).
	tiles at: 'increase_wisdom_potion' put: (spriteImages at: 13).
	tiles at: 'resist_heat_potion' put: (spriteImages at: 14).
	tiles at: 'resist_cold_potion' put: (spriteImages at: 15).
