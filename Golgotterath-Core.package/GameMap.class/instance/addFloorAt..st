initialization
addFloorAt: floor
	| r |
	r := 10 atRandom.
	self
		addTile: (self getTile: 'cr_floor' , r asString)
		atx: floor x
		y: floor y