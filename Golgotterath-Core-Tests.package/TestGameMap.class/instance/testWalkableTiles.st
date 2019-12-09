tests
testWalkableTiles
	| map wall floor bedrock | 
	map := GameMap new.
	wall := map getTile: 'wall_brown'.
	floor := map getTile: 'floor_grey'.
	bedrock := map getTile: 'wall_grey'.
	"Transcript show: 'path size is ',path size asString;cr."
	self assert: ((map isWalkable: wall) equals: false) .
	self assert: ((map isWalkable: bedrock) equals: false) .
	self assert: ((map isWalkable: floor) equals: true ).