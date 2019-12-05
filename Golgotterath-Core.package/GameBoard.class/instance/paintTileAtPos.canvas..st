accessing
paintTileAtPos: worldpos canvas: aCanvas
	| tile |
		tile := gameMap mapAt: worldpos.
		tile boardPosition: worldpos.
		tile paint: self at: aCanvas.
		self paintOverlappingEntity: worldpos at: aCanvas