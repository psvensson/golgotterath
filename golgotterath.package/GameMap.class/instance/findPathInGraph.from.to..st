accessing
findPathInGraph: graph from: pos1 to: pos2
	| n1 n2 res |
	res := #().
	n1 := self posToSymbol: pos1.
	n2 := self posToSymbol: pos2.
	
	res := graph  runFrom: n1 to: n2;backtrack.
	Transcript show: 'findPathInGraph from ',pos1 asString,' to ',pos2 asString,' result: ',res asString;cr.
	
	
	^ res