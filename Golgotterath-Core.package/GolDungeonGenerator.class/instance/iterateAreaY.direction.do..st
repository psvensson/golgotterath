initialization
iterateAreaY: area direction: d do: aBlock
	| h y |
	h := area at: #h.
	y := GolUtil getYForArea: area Dir: d.	
	y to: y + h do: [ :iy | aBlock value: iy ]