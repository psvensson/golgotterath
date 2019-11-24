accessing
findPathFrom: pos1 to: pos2
	| n1 n2 res |
	n1 := self posToSymbol: pos1.
	n2 := self posToSymbol: pos2.
	res := dijkstragraph  runFrom: n1 to: n2; backtrack.
	Transcript show: 'dijkstra result: ',res asString;cr.
	^ res