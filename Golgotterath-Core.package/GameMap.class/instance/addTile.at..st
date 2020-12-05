accessing
addTile: gameTile at: boardPosition
	"Transcript show:'adding tile ',gameTile name,' at ',boardPosition asString;cr."
	gameTile boardPosition: boardPosition.
	map at: boardPosition put: gameTile