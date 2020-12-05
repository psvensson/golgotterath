initialization
addFloorAt: floorPos
	| r tile |
	r := 10 atRandom.
	tile := self getTile: 'cr_floor' , r asString.
	self addTile: tile at: floorPos 