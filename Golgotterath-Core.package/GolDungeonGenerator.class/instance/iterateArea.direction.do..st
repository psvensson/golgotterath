initialization
iterateArea: area direction: d do: aBlock
	| h w x y |
	h := area at: #h.
	w := area at: #w.
	x := GolUtil getXForArea: area Dir: d.
	y := GolUtil getYForArea: area Dir: d.
	y to: y + h do: [ :iy | x to: x + w do: [ :ix | aBlock value: ix value: iy ] ]