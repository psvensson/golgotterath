drawing
renderViewportPosition: worldpos

	self paintTileAtPos: worldpos.
	self paintItemAtPos: worldpos.
	self paintEntityAt: worldpos