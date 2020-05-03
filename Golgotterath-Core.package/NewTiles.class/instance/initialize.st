initialization
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 64 spritesPerRow: 12.
	tiles := Dictionary new.
	tiles at: 'door1_open' put: (spriteImages at: 1).
	tiles at: 'door1_open_rot' put: (spriteImages at: 2).
	tiles at: 'door1_closed' put: (spriteImages at: 3).
	tiles at: 'door1_closed_rot' put: (spriteImages at: 4).
	tiles at: 'bluewall' put: (spriteImages at: 5).
	tiles at: 'bluewall_rot' put: (spriteImages at: 6).
	tiles at: 'lightwall' put: (spriteImages at: 7).
	tiles at: 'lightwall_rot' put: (spriteImages at: 8).
	tiles at: 'sandwall' put: (spriteImages at: 9).
	tiles at: 'sandwall_rot' put: (spriteImages at: 10).
	tiles at: 'greywall' put: (spriteImages at: 11).
	tiles at: 'greywall_rot' put: (spriteImages at: 12).
	tiles at: 'darkwall' put: (spriteImages at: 13).
	tiles at: 'darkwall_rot' put: (spriteImages at: 14).