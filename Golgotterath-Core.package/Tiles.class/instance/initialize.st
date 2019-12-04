initialization
initialize 
	| img |
	super initialize.
	img := self spriteImage.
	self loadSpriteImage: img spriteWidth: 64 spritesPerRow: 10.
	tiles := Dictionary new.
	tiles at: 'floor' put: (spriteImages at: 1).
	tiles at: 'wall_brown' put: (spriteImages at: 2).
	tiles at: 'wall_white' put: (spriteImages at: 3).
	tiles at: 'floor_skull_mark' put: (spriteImages at: 6).
	tiles at: 'green_cloud' put: (spriteImages at: 12).
	tiles at: 'pillar_brown' put: (spriteImages at: 13).
	tiles at: 'pillar_white' put: (spriteImages at: 14).
	tiles at: 'door_closed_x' put: (spriteImages at: 15).
	tiles at: 'stairs_up' put: (spriteImages at: 66).
	tiles at: 'grey_cloud' put: (spriteImages at: 24).
	tiles at: 'door_closed_y' put: (spriteImages at: 27).
	tiles at: 'wall_grey' put: (spriteImages at: 28).
	tiles at: 'wall_green' put: (spriteImages at: 29).
	tiles at: 'stairs_down' put: (spriteImages at: 30).
	tiles at: 'blue_cloud' put: (spriteImages at: 36).
	tiles at: 'pillar_grey' put: (spriteImages at: 39).
	tiles at: 'pillar_green' put: (spriteImages at: 40).
	tiles at: 'well' put: (spriteImages at: 41).
	tiles at: 'white_cloud' put: (spriteImages at: 48).
	tiles at: 'floor_lava' put: (spriteImages at: 89).
	tiles at: 'floor_water' put: (spriteImages at: 101).
	tiles at: 'floor_grey' put: (spriteImages at: 125).
	tiles at: 'door_open_x' put: (spriteImages at: 137).
	tiles at: 'door_open_y' put: (spriteImages at: 149).
	tiles at: 'portal_light' put: (spriteImages at: 151).
	tiles at: 'portal_blue' put: (spriteImages at: 174).
	tiles at: 'portal_green' put: (spriteImages at: 186).
	tiles at: 'statue_dragon' put: (spriteImages at: 53).
	tiles at: 'statue_head' put: (spriteImages at: 65).