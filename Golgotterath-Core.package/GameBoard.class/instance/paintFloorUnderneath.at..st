initialization - private
paintFloorUnderneath: position at: aCanvas
	| tile |
	tile := gameMap getTile: 'floor_grey'.
	tile boardPosition: position.
	tile paint: self at: aCanvas