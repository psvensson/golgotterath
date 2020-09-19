drawing
paintTileAtPos: worldpos
	| tile ppos alpha image |
	ppos := player boardPosition.
	tile := self gameMap mapAt: worldpos.
	tile boardPosition: worldpos.
	alpha := ((tile overlaps: ppos) and: (GolUtil isFloor: tile) not)
		ifTrue: [ 0.7 ]
		ifFalse: [ "self getDarknessAlpha: worldpos" 1.0 ].
	image := tile paint: self alpha: alpha.
	(GolUtil isFloor: tile)
		ifFalse: [ self paintFloorUnderneath: worldpos.
			self addMorph: image ]
		ifTrue: [ self addMorphBack: image ].
	"self paintOverlappingEntity: worldpos"

	"Transcript show:'GameBoard painting tile at ',tile boardPosition asString,' alpha is ',alpha asString;cr."