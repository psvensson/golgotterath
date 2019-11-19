accessing
paintTileAtPos: worldpos canvas: aCanvas
	| tile |
		tile := gameMap mapAt: worldpos.
		tile boardpos: worldpos.
		tile paint: self at: aCanvas.
		self paintOverlappingEntity: worldpos at: aCanvas.