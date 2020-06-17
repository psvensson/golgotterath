drawing
getDarknessAlpha: worldpos
	| diff diffx diffy alpha |
	diffx := (worldpos x - player boardPosition x) abs.
	diffy := (worldpos y - player boardPosition y) abs.
	diff := diffx max: diffy.
	alpha := 1.
	alpha :=  (diff < 2) ifTrue: [0] ifFalse: [(diff * 0.15) + 0.35].
	^ alpha
	