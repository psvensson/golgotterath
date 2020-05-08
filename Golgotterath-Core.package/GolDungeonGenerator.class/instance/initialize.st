initialization
initialize 
	"| door room |"
	MAX_SIZE := 9.
	MIN_SIZE := 4.
	
	MAX_CORRIDOR_SIZE := 12.
	MIN_CORRIDOR_SIZE := 5.
	
	map := Dictionary new.
	rooms := OrderedCollection new.
	
	"door := Dictionary new.
	door at: #pos put: (-2)@(-2); at: #direction put: #down.
	room := self createRandomRoomAt: door depth: 1.
	rooms add: room."
	
	currentDepth := 1.
	quadTree := QuadTree
		size: 1024
		maxLeafs: 8
		maxDepth: 16
		x: 0
		y: 0.
	