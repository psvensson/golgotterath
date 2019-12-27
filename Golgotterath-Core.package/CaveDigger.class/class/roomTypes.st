accessing
roomTypes	
	^ Dictionary newFrom:
		{ #floor->' '.
			#wall->'#'.
			#door->'+'.
			#stair_up->'<'.
			#stair_down->'>'. 
			 }