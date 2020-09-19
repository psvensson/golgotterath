drawing
paintFloorUnderneath: position
	| tile |
	tile := self gameMap getTile: 'cr_floor1'.
	tile boardPosition: position.
	tile paint: self.
	self addMorph: tile image.