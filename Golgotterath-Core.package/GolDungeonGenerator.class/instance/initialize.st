initialization
initialize 
	| door |
	MAX_SIZE := 8.
	MIN_SIZE := 3.
	map := Dictionary new.
	rooms := OrderedCollection new.
	door := Dictionary new.
	door at: #pos put: 0@0; at: #direction put: #down.
	rooms add: (self createRandomRoomAt: door depth: 0).
	currentDepth := 0.
	