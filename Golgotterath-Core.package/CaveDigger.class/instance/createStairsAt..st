generating
createStairsAt: pos
	quadTree 
			insert: (self pointRectFor: pos) 
			data: (self class roomTypes at: #stair_down)