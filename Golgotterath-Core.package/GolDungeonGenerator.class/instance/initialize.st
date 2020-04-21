initialization
initialize 
	| door room |
	MAX_SIZE := 8.
	MIN_SIZE := 3.
	MIN_DOORS := 1.
	MAX_DOORS := 4.
	map := Dictionary new.
	rooms := OrderedCollection new.
	door := Dictionary new.
	door at: #pos put: 0@0; at: #direction put: #down.
	room := self createRandomRoomAt: door depth: 0.
	rooms add: room.
	currentDepth := 0.
	