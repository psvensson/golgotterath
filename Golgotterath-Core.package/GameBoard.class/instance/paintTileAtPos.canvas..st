drawing
paintTileAtPos: worldpos canvas: aCanvas
	| tile ppos |
	ppos := player boardPosition.
	tile := gameMap mapAt: worldpos.
	tile boardPosition: worldpos.
	(GolUtil isFloor: tile) ifFalse: [ 
		self paintFloorUnderneath: worldpos at: aCanvas ].
	((tile overlaps: ppos) and: ((GolUtil isFloor: tile) not))
		ifTrue: [ tile paint: self at: aCanvas alpha: 0.7 ]
		ifFalse: [ tile paint: self at: aCanvas alpha: 1.0 ].
	self paintOverlappingEntity: worldpos at: aCanvas