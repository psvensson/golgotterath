accessing
effectOnWall: wall 
	"Transcript show:'effectOnWall not implemented';cr."
	| pos |
	pos := gamemap getItemFreeTileForPos: lastBoardPosition .
	gamemap addItem: referenceObject  at:  pos