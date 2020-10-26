accessing
mapAt: pos

	| tile nilblock |
	nilblock := [ 
	            tile := self getTile: (self class levelWalls at: level).
	            tile boardPosition: pos ].
	tile := map at: pos ifAbsent: nilblock.
	tile ifNil: nilblock.
	^ tile