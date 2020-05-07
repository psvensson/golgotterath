initialization
iterateArea: area direction: d edge: edge do: aBlock
	| h w x y |
	h := area at: #h.
	w := area at: #w.
	x := GolUtil getXForArea: area Dir: d.
	y := GolUtil getYForArea: area Dir: d.	
	"Transcript
		show:
			'iterateArea edge from ' , (x @ y) asString , ' to '
				, ((x + w) @ y + h) asString;
		cr."
	y + edge to: y + h - edge do:
		[ :iy | x + edge to: x + w - edge do: [ :ix | aBlock value: ix value: iy ] ]