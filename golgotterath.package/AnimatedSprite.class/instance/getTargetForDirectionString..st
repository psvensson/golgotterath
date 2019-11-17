accessing
getTargetForDirectionString: dir
	| x y|
	x := boardpos x.
	y := boardpos y.
	dir = 'up' ifTrue: [ y := y - 1].
	dir = 'down' ifTrue: [ y := y + 1].
	dir = 'left' ifTrue: [ x := x - 1].
	dir = 'right' ifTrue: [ x := x + 1].		
	^ x@y.	