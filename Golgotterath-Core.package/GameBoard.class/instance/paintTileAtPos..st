drawing
paintTileAtPos: worldpos
	| tile ppos alpha image |
	"Transcript show:'paintTileAtPos: ',worldpos asString;cr."
	ppos := player boardPosition.
	tile := self gameMap mapAt: worldpos.
	alpha := ((tile overlaps: ppos boardPosition: worldpos) and: (GolUtil isFloor: tile) not)
		ifTrue: [ 0.7 ]
		ifFalse: [ "self getDarknessAlpha: worldpos" 1.0 ].
	image := tile sprite paint: self alpha: alpha boardPosition: tile boardPosition.
	(GolUtil isFloor: tile)
		ifFalse: [ self paintFloorUnderneath: worldpos.
			self addMorph: image ]
		ifTrue: [ self addMorphBack: image ].
	"self paintOverlappingEntity: worldpos"
