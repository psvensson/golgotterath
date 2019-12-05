initialization
createDijkstraGraphAt: origo radius: radius
	| nodes edges index graph |
	graph := MalDijkstra new.
	nodes := OrderedCollection new .
	edges := OrderedCollection new.
	index := 1.
	(origo y - radius)  to: (origo y + radius) do: 
		[ :y | (origo x - radius) to: (origo x + radius) do: 
			[ :x | 
				nodes add: (self posToSymbol: x@y).
				index := index +1.
				]].	
	(origo y - radius)  to: (origo y + radius) do: 
		[ :y | (origo x - radius) to: (origo x + radius) do:  
			[ :x | |tile|
				tile := self mapAt: x@y.
				(self isWalkable: tile) ifTrue: [ 
					edges addAll: (self connectToSurroundingNodes: tile) ]  ] ].
	graph nodes: nodes asArray .
	graph edges: (edges asArray) from: #first to: #second.	
	^ graph