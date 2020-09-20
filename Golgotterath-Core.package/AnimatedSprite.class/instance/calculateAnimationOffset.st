scripting
calculateAnimationOffset
	| step dx dy x y res |
	x := 0.
	y := 0.
	step := self tileSize / self getOldAnimation frames size
		* self getOldAnimation frame.
	self target
		ifNotNil: [ dx := self target x - self boardPosition x.
			dy := self target y - self boardPosition y.
			dx > 0
				ifTrue: [ x := 1 ].
			dx < 0
				ifTrue: [ x := -1 ].
			dy > 0
				ifTrue: [ y := 1 ].
			dy < 0
				ifTrue: [ y := -1 ] ].
	res := GolUtil toISO: (step * x) @ (step * y).
	res := res x asInteger @ res y asInteger.
	^ res