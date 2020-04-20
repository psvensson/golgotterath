initialization
excavate: area
	self iterateArea: area do: [ :ix :iy | self mapAt: ix @ iy put: 1 ]