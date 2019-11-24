accessing
isWalkable: tile
	| rv bedrock floor |
	bedrock := (self isBedrock: tile).
	floor := (self isFloor: tile).
	rv := ((bedrock not) and: floor).
	"Transcript show: 'isWalkable ',tile boardpos asString,
	' bedrock=',bedrock asString,' floor=',floor asString,' rv=',rv asString;cr."
	^ rv