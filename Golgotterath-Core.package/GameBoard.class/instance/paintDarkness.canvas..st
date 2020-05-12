drawing
paintDarkness: worldpos canvas: aCanvas
	| diff diffx diffy alpha position tile |
	diffx := (worldpos x - player boardPosition x) abs.
	diffy := (worldpos y - player boardPosition y) abs.
	diff := diffx max: diffy.
	alpha := 1.
	alpha :=  (diff < 2) ifTrue: [0] ifFalse: [(diff * 0.15) + 0.35].
	position:= worldpos.
	tile := self gameMap getTile: 'floor'.
	tile boardPosition: position.
	tile paint: self at: aCanvas alpha: alpha.
	