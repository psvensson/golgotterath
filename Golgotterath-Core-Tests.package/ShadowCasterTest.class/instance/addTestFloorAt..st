test
addTestFloorAt: pos

	| floor |
	floor := shadowCaster gamemap getTile: 'cr_floor1'.
	floor boardPosition: pos.
	shadowCaster gamemap addTile: floor at: pos.
	^ floor