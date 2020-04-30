initialization
digAt: pos depth: depth
	| doors door |
	
	doors := OrderedCollection new.
	door := Dictionary new.
	door
		at: #pos put: pos;
		at: #direction put: #down. 
	doors add: door.
	[ currentDepth = depth ]
		whileFalse: [ doors
				do: [ :d | 
					| room |
					room := self createRandomRoomAt: d depth: currentDepth.
					room ifNotNil: [doors addAll: room doors] ].
			currentDepth := currentDepth + 1 ]