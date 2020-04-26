test
testCreateRandomRoomAtDepth
	"Check that a new room to the left of a room actually is to the left, et.c."
	| door area room |
	area := Dictionary new.
	area at: #pos put: 10@10; at: #h put: 10; at: #w put: 10.
	room := generator createRoomAt: area depth: 1.
	door := Dictionary new.
	door at: #pos put: 20@15; at: #direction put: #right.
	room doors add: door.
	generator mapAt: (door at: #pos) put: 2 .
	generator createRandomRoomAt: door depth: 1.
	
	self assert: (generator mapAt: 21@15) equals: 1