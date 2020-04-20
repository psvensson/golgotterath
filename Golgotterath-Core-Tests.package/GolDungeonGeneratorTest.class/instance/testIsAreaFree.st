test
testIsAreaFree
	| area1 area2 area3 |
	area1 := GolDungeonGenerator createAreaAt: 0@0 w: 3 h: 3.
	area2 := GolDungeonGenerator createAreaAt: 1@1 w: 3 h: 3.
	area3 := GolDungeonGenerator createAreaAt: 5@5 w: 3 h: 3.
	generator createRoomAt: area1 depth: 1.
	
	self assert: (generator isAreaFree: area2) equals: false