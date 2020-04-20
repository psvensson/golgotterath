initialization
iterateArea: area do: aBlock
	| h w x y |
	h := area at: #h.
	w := area at: #w.
	x := (area at: #pos) x.
	y := (area at: #pos) y.
	y to: y + h do: [ :iy | x to: x + w do: [ :ix | aBlock value: ix value: iy ] ]