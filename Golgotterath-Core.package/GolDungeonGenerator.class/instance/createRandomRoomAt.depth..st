accessing
createRandomRoomAt: door depth: depth
	| direction area |
	direction := door at: #direction.
	area := self attempToFindAreaAt: door direction: direction.
	area
		ifNil: [ "TODO: remove doors which does not lead anywhere"
			
			^ nil ].
	door at: #checked put: true.
	^ self createRoomAt: area depth: depth direction: direction