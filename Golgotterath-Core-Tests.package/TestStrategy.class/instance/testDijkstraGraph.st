tests
testDijkstraGraph
	| map graph | 
	map := GameMap new.
	"board mapRadius: 2."
	map createDefaultMap.
	graph := map createDijkstraGraphAt: 0@0 radius: 8.
	map findPathInGraph: graph from: 0@0 to: 1@7 callback: [ :path |
	Transcript show: 'dijkstra test; path size is ',path size asString;cr.
	self assert: (path size > 0) ].
	map findPathInGraph: graph from: 5@0 to: 3@4 callback: [ :path2 |  
	Transcript show: 'dijkstra test; path2 size is ',path2 size asString;cr.
	self assert: (path2 size > 0) ]