accessing
isAdjacentTo: pos
	| dx dy |
	dx := ((self boardPosition x) - pos x) abs.
	dy := ((self boardPosition y) - pos y) abs.
	^ (dx < 2) and: (dy < 2)