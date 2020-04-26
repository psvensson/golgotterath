initialization
iterateArea: area edge: edge do: aBlock
	| h w x y |
	h := area at: #h.
	w := area at: #w.
	x := (area at: #pos) x.
	y := (area at: #pos) y.
	y + edge to: y + h - edge do: [ :iy | x + edge to: x + w - edge do: [ :ix | aBlock value: ix value: iy ] ]