initialization
addFloorAt: floor
	| r tile |
	r := 10 atRandom.
	tile := self getTile: 'cr_floor' , r asString.
	"tile := r > 0
		ifTrue: [ self getTile: 'floor_grey' ]
		ifFalse: [ self getTile: 'cr_floor' , r asString ]."
	self addTile: tile at: floor x @ floor y