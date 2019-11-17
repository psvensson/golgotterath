scripting
getAnimationStep
	| step dx dy x y |
	x := 0.
	y := 0.
	step := ((self tileSize) / 4) * (self getOldAnimation frame).
	dx := self target x - self boardpos x .
	dy := self target y - self boardpos y .
	dx > 0 ifTrue: [ x := 1 ].
	dx < 0 ifTrue: [ x := -1 ].
	dy > 0 ifTrue: [ y := 1 ].
	dy < 0 ifTrue: [ y := -1 ].
	^ self toISO: (step * x)@(step* y)