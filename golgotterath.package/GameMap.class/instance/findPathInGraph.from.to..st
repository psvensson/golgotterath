accessing
findPathInGraph: graph from: pos1 to: pos2
	| n1 n2 res length |
	res := #().
	n1 := self posToSymbol: pos1.
	n2 := self posToSymbol: pos2.
	Transcript show: 'findPathInGraph from n1: ',n1 asString,' n2: ',n2 asString;cr.
	length := graph  runFrom: n1 to: n2.
	Transcript show: 'findPathInGraph n1: ',n1 asString,' n2: ',n2 asString,
	' length: ',length asString;cr.
	length > 0 ifTrue: [ 
		res := graph  runFrom: n1 to: n2;backtrack.
		Transcript show: 'findPathInGraph result: ',res asString;cr.
	].
	
	^ res