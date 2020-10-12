testing
getTargetForDirectionValue: v position: pos
	| x y |
	x := pos x.
	y := pos y.
	v = 1	ifTrue: [ x := x - 1.y := y + 1 ].
	v = 2	ifTrue: [ x := x - 1. ].
	v = 3	ifTrue: [ x := x - 1.y := y - 1 ].
	v = 4	ifTrue: [ y := y + 1 ].
	v = 5	ifTrue: [ x := x + 1.y := y - 1 ].
	v = 6	ifTrue: [ x := x + 1. ].
	v = 7	ifTrue: [ x := x + 1.y := y + 1 ].
	v = 8	ifTrue: [ y := y + 1 ].	
	
	^ x @ y