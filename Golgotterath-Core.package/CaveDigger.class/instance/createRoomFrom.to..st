creating
createRoomFrom: start to: end
	GolUtil from: start to: end do: [ :pos |
		 "quadTree 
			insert: (self pointRectFor: pos) 
			data: (self class roomTypes at: #floor)"
			dungeon at: pos put: (self class roomTypes at: #floor) ]
	
	
	