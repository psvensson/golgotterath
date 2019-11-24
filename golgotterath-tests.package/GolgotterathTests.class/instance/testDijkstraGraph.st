tests
testDijkstraGraph
	| board path | 
	board := GameMap new.
	"board mapRadius: 2."
	board createDefaultMap.
	board createDijkstraGraph.
	path := board findPathFrom: 0@0 to: 1@7.
	"Transcript show: 'path size is ',path size asString;cr."
	self assert: (path size > 0)  .