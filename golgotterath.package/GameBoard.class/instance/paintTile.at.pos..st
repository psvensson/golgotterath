drawing
paintTile: tilepos at: aCanvas pos: pos
	| floor |
 	floor := map at: (tilepos x @ tilepos y).
	self paintSprite: floor tilepos: tilepos at: aCanvas pos: pos.