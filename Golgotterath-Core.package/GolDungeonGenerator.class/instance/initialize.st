initialization
initialize 
	| door room |
	MAX_SIZE := 8.
	MIN_SIZE := 3.
	
	map := Dictionary new.
	rooms := OrderedCollection new.
	
	door := Dictionary new.
	door at: #pos put: 0@0; at: #direction put: #down.
	room := self createRandomRoomAt: door depth: 1.
	rooms add: room.
	
	currentDepth := 1.
	