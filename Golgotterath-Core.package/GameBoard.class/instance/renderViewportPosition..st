drawing
renderViewportPosition: worldpos

	| image |
	self paintTileAtPos: worldpos.
	self paintRedMarkerAtPos: worldpos .
	self paintItemAtPos: worldpos.
	self paintEntityAt: worldpos