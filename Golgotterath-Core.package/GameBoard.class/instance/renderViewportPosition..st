drawing
renderViewportPosition: pos

	| worldpos |
	worldpos := "self getWorldCoordsFromOffset:" pos.
	Transcript show:'renderViewportPosition: ',worldpos asString;cr.
	self paintTileAtPos: worldpos.
	self paintItemAtPos: worldpos.
	self paintEntityAt: worldpos