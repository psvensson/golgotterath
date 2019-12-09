accessing
findPathInGraph: graph from: pos1 to: pos2
	| n1 n2 res path |
	res := #().
	n1 := self posToSymbol: pos1.
	n2 := self posToSymbol: pos2.
	
	res := graph  runFrom: n1 to: n2.
	"Logger log: 'findPathInGraph res=';log:res;cr."
	path := graph backtrack.
	
	^ path