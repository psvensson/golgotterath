accessing
getWorldAnimationStep
	| step dx dy x y |
	"Transcript
		show:
			'getWorldAnimationStep worldAnimatioNFrame = '
				, worldAnimationFrame asString;
		cr."
	worldCoords
		ifNotNil: [ x := 0.
			y := 0.
			step := self tileSize / self animationFrames * worldAnimationFrame.
			dx := worldCoords x - worldLastPosition x.
			dy := worldCoords y - worldLastPosition y.
			dx > 0
				ifTrue: [ x := 1 ].
			dx < 0
				ifTrue: [ x := -1 ].
			dy > 0
				ifTrue: [ y := 1 ].
			dy < 0
				ifTrue: [ y := -1 ].
			^ GolUtil toISO: (step * x) @ (step * y) ]