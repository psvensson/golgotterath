initialization
initialize 
	|  |
	MAX_SIZE := 9.
	MIN_SIZE := 4.
	
	MAX_CORRIDOR_SIZE := 12.
	MIN_CORRIDOR_SIZE := 5.
	
	map := Dictionary new.
	rooms := OrderedCollection new.
	
	"door := Dictionary new.
	door at: #pos put: 0@0; at: #direction put: #down.
	room := self createRandomRoomAt: door depth: 1.
	rooms add: room."
	
	currentDepth := 1.
	