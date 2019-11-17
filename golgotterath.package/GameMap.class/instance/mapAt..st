accessing
mapAt: pos
	| tile nilblock |
	nilblock := [ 
		tile := (Sprite new) image: (tiles tile: 'wall_grey'); name: 'wall_grey'.
		tile boardpos: pos.
 	].
	tile := map at:pos ifAbsent: nilblock.	
	tile ifNil: nilblock.
	^ tile