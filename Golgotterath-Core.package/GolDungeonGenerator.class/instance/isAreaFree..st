initialization
isAreaFree: area
	| rv |
	rv := true.
	self iterateArea: area do: [ :ix :iy | (self mapAt: ix @ iy) = 1 ifTrue: [ rv := false ] ].
	^ rv