drawing
paintDarkness: worldpos 
	| diff diffx diffy alpha position tile i|
	diffx := (worldpos x - player boardPosition x) abs.
	diffy := (worldpos y - player boardPosition y) abs.
	diff := diffx max: diffy.
	alpha := 1.
	alpha :=  (diff < 3) ifTrue: [0] ifFalse: [( (diff * 0.05) + 0.1)].
	position:= worldpos.
	tile := self gameMap getTile: 'floor'.
	tile boardPosition: position.
	i := tile paint: self alpha: alpha.
	i color: Color transparent.
	self addMorph: i.
	