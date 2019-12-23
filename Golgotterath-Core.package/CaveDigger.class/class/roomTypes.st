accessing
roomTypes
	roomTypes ifNil:[
		roomTypes := Dictionary newFrom:
		{ #floor->'floor'.
			#wall->'wall'.
			#door->'door'.
			#stair_up->'stair_up'.
			#stair_down->'stair_down'.
			 } ].
	^ roomTypes