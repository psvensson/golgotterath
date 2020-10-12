drawing
paintFloorUnderneath: boardPosition
	| tile |
	tile := self gameMap getTile: 'cr_floor1'.
	tile sprite paint: self boardPosition: boardPosition.
	self addMorph: tile sprite image.