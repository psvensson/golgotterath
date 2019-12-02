tests
testDijkstraGraph
	| map path | 
	map := GameMap new.
	"board mapRadius: 2."
	map createDefaultMap.
	map createDijkstraGraph.
	path := map findPathFrom: 0@0 to: 1@7.
	"Transcript show: 'path size is ',path size asString;cr."
	self assert: (path size > 0)  .