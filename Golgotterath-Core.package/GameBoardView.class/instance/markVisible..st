initialization
markVisible: pos

	visibleTiles at: pos put: pos.
	minX := minX min: pos x.
	minY := minY min: pos y.
	maxX := maxX max: pos x.
	maxY := maxY max: pos y