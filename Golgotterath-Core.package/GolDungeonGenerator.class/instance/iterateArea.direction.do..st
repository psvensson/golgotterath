initialization
iterateArea: area direction: d do: aBlock
	| h w x y |
	h := area at: #h.
	w := area at: #w.
	x := GolUtil getXForArea: area Dir: d.
	y := GolUtil getYForArea: area Dir: d.	
	"Transcript
		show:
			'--- iterateArea from ' , (x @ y) asString , ' to '
				, ((x + w) @ y + h) asString;
		cr."
	y to: y + h do: [ :iy | x to: x + w do: [ :ix | aBlock value: ix value: iy ] ]