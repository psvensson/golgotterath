initialization
createDijkstraGraphAt: origo radius: radius
	| nodes edges graph |	
	graph := MalDijkstra new.	
	edges := OrderedCollection new.
	nodes := OrderedCollection new .
	(origo y - radius)  to: (origo y + radius) do: 
		[ :y | (origo x - radius) to: (origo x + radius) do: 
			[ :x | 
				"Logger log:'.. adding tile ';log:x@y;cr."
				nodes add: (self posToSymbol: x@y).	]].	
	graph nodes: nodes asArray .			
	(origo y - radius)  to: (origo y + radius) do: 
		[ :y | (origo x - radius) to: (origo x + radius) do:  
			[ :x | |tile|
				tile := self mapAt: x@y.
				(self isWalkable: tile) ifTrue: [ 
					"Logger log:'---connecting tile ';log:x@y;cr."
					edges addAll: (self connectToSurroundingNodes: tile) ]]].
	graph edges: (edges asArray) from: #first to: #second.	
	^ graph