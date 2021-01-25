drawing
repaintEntityInFrontOfWall: wall
	| wallPos pos |
	pos := wall boardPosition .
	wallPos := (pos x )@(pos y+1).
	self paintEntityAt: pos.