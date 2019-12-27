initialization
walk: direction
	| d x y |
	direction ifNil: [ d := self directionWithSmoothingFuzz ]
					ifNotNil: [ d := direction  ].
	d := (d rounded) \\ 4.
	d := d +1.
	x := walkerPosition x + (OrderedCollection 
     with: 1 with: 0 with: -1 with: 0) at: d.
	y := walkerPosition y + (OrderedCollection 
     with: 0 with: 1 with: 0 with: -1) at: d.
	self walkerPosition: x@y.
	