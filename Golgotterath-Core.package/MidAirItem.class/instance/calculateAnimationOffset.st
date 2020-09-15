accessing
calculateAnimationOffset
	| step x y res |
	x := 0.
	y := 0.
	step := sprite tileSize / 4.
	(direction findString: 'up') > 0
		ifTrue: [ y := y - 1 ].
	(direction findString: 'down') > 0
		ifTrue: [ y := y + 1 ].
	(direction findString: 'left') > 0
		ifTrue: [ x := x - 1 ].
	(direction findString: 'right') > 0
		ifTrue: [ x := x + 1 ].
	res := GolUtil toISO: (step * x) asInteger @ (step * y) asInteger.
	^ res