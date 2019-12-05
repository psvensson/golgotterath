paint
paintTileAtPos: worldpos canvas: aCanvas
	| tile |
		tile := gameMap mapAt: worldpos.
		tile boardPosition: worldpos.
		(GolUtil isFloor: tile) ifFalse: [ 
			self paintFloorUnderneath: worldpos at: aCanvas ].
		tile paint: self at: aCanvas.
		self paintOverlappingEntity: worldpos at: aCanvas