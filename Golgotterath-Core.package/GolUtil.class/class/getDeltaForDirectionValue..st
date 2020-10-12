testing
getDeltaForDirectionValue: v
	| x y |
	x := 0.
	y := 0.
	v = 1
		ifTrue: [ x := -1.
			y := 1 ].
	v = 2
		ifTrue: [ x := -1 ].
	v = 3
		ifTrue: [ x := -1.
			y := -1 ].
	v = 4
		ifTrue: [ y := -1 ].
	v = 5
		ifTrue: [ x := 1.
			y := -1 ].
	v = 6
		ifTrue: [ x := 1 ].
	v = 7
		ifTrue: [ x := 1.
			y := 1 ].
	v = 8
		ifTrue: [ y := 1 ].
	^ x @ y