testing
isWalkable: tile
	| rv bedrock floor |
	bedrock := (self isBedrock: tile).
	floor := (GolUtil isFloor: tile).
	rv := ((bedrock not) and: floor).
	"Logger log: 'isWalkable ';log:tile boardPosition;log:	' bedrock=';log:bedrock;
		log:' floor=';log:floor;log:' rv=';log:rv;cr."
	^ rv