accessing
findPathInGraph: graph from: pos1 to: pos2
	| n1 n2 path |
	"res := #()."
	n1 :=  (self posToSymbol: pos1) .
	n2 :=  (self posToSymbol: pos2) .
	path := graph runFrom: n1 to: n2;backtrack.
	Logger log: 'findPathInGraph from ';log:n1;log:' to ';log:n2;
		log:' path length=';log:path size;cr.
	
	^ path