accessing
getWorldAnimationStep
	| step dx dy x y |
	x := 0.
	y := 0.
	worldAnimationFrame := worldAnimationFrame + 1.
	step := ((self tileSize) / 4) * (worldAnimationFrame).
	dx := (worldCoords x) - (worldLastPosition x).
	dy := (worldCoords y) - (worldLastPosition y).
	dx > 0 ifTrue: [ x := 1 ].
	dx < 0 ifTrue: [ x := -1 ].
	dy > 0 ifTrue: [ y := 1 ].
	dy < 0 ifTrue: [ y := -1 ].
	^ GolUtil toISO: (step * x)@(step* y)