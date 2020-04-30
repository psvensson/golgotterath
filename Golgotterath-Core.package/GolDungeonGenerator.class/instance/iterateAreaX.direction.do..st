initialization
iterateAreaX: area direction: d do: aBlock
	| w x |
	w := area at: #w.
	x := (area at: #pos) x.
	x := GolUtil getXForArea: area Dir: d.
	x to: x + w do: [ :ix | aBlock value: ix ]