initialization
initialize

	shadowCaster := ShadowCast new.
	maxX := 0.
	maxY := 0.
	minX := 0.
	minY := 0.
	visibleTiles := Dictionary new.
	shadowCaster
		markVisible: [ :pos | self markVisible: pos ];
		isBlocking: [ :pos | self isBlocking: pos ];
		radius: 3