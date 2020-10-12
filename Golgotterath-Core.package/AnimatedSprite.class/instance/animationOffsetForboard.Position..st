scripting
animationOffsetForboard: gameboard Position: boardPosition
	| step dx dy x y res |
	x := 0.
	y := 0.
	step := gameboard gameboardTesselation / self getOldAnimation frames size
		* self getOldAnimation frame.
	self target
		ifNotNil: [ dx := self target x - boardPosition x.
			dy := self target y - boardPosition y.
			dx > 0
				ifTrue: [ x := 1 ].
			dx < 0
				ifTrue: [ x := -1 ].
			dy > 0
				ifTrue: [ y := 1 ].
			dy < 0
				ifTrue: [ y := -1 ] ].
	res := (step * x) @ (step * y).
	res := res x asInteger @ res y asInteger.
	^ res