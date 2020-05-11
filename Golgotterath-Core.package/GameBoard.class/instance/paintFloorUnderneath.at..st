drawing
paintFloorUnderneath: position at: aCanvas
	| tile |
	tile := self gameMap getTile: 'floor_grey'.
	tile boardPosition: position.
	tile paint: self at: aCanvas