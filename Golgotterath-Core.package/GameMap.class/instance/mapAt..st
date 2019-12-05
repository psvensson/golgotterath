accessing
mapAt: pos
	| tile nilblock |
	nilblock := [ 
		tile := self getTile: 'wall_grey'.
		tile boardPosition: pos.
 	].
	tile := map at:pos ifAbsent: nilblock.	
	tile ifNil: nilblock.
	^ tile