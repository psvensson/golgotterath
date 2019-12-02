initialization
createDijkstraGraph
	| start stop nodes edges index |
	dijkstragraph := MalDijkstra new.
	nodes := OrderedCollection new .
	edges := OrderedCollection new.
	index := 1.
	stop := self mapRadius.	
	start := stop negated.	
	start  to: stop do: 
		[ :y | start to: stop do: 
			[ :x | 
				nodes add: (self posToSymbol: x@y).
				index := index +1.
				]].	
	start  to: stop do: 
		[ :y | start to: stop do: 
			[ :x | |tile|
				tile := self mapAt: x@y.
				(self isWalkable: tile) ifTrue: [ 
					Transcript show: 'adding tile ',x asString,',',y asString;cr.
					edges addAll: (self connectToSurroundingNodes: tile) ]  ] ].
	dijkstragraph nodes: nodes asArray .
	dijkstragraph edges: (edges asArray) from: #first to: #second.	