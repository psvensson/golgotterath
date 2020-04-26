initialization
dig: depth
	[ currentDepth = depth ]
		whileFalse: [ (self getRoomsWithDepth: currentDepth)
				do: [ :room | 
					room doors
						do: [ :door | self createRandomRoomAt: door depth: currentDepth ] ].
			currentDepth := currentDepth + 1 ]