initialization
initialize
	top := 0. bottom := 0. left := 0. right := 0.
	dungeon := Dictionary new.
	quadTree := QuadTree
		size: 128
		maxLeafs: 4
		maxDepth: 16
		x: 0
		y: 0.
	