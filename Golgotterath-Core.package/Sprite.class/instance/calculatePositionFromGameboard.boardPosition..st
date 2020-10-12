accessing
calculatePositionFromGameboard: gameboard boardPosition: boardPosition
	| startpos tiledelta tesselation scaleFactor finalPos |
	tesselation := gameboard gameboardTesselation.
	scaleFactor := gameboard scaleFactor.
	tiledelta :=  boardPosition - gameboard gameboardFocus + gameboard boardDrawOffset.
	finalPos := tiledelta * scaleFactor * tesselation.
	startpos := gameboard centerPoint.
	^ startpos
		+ (GolUtil toISO: finalPos + (tileAdjustment * scaleFactor))