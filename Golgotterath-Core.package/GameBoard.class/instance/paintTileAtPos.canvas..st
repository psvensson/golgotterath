drawing
paintTileAtPos: worldpos canvas: aCanvas
	| tile ppos alpha |
	ppos := player boardPosition.
	tile := self gameMap mapAt: worldpos.
	tile boardPosition: worldpos.
	(GolUtil isFloor: tile)
		ifFalse: [ self paintFloorUnderneath: worldpos at: aCanvas ].
	alpha := ((tile overlaps: ppos) and: (GolUtil isFloor: tile) not)
		ifTrue: [ 0.7 ]
		ifFalse: [ "self getDarknessAlpha: worldpos" 1.0 ].
	tile paint: self at: aCanvas alpha: alpha.
	self paintOverlappingEntity: worldpos at: aCanvas