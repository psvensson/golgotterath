test
testShadowMemoryForSide: side
	| forward floor wall shadowedFloor memory res res2 res3 isHorizontal |
	memory := Dictionary new.
	forward := side at: #verticalforward.
	isHorizontal := (side at: #horizontal ) = #x.
	floor := 	self addTestFloorAt: 0 @ 0.
	wall := isHorizontal ifTrue: [ self addTestWallAt: 0 @ forward.] ifFalse: [ 
		  self addTestWallAt: forward@0.].
	shadowedFloor :=isHorizontal ifTrue: [  self addTestFloorAt: 0 @ forward * 2] 
	ifFalse: [ self addTestFloorAt: (forward * 2)@0].
	res := shadowCaster
		       shadowCastIsInMemory: memory
		       tile: floor
		       forSide: side.
	res2 := shadowCaster
		        shadowCastIsInMemory: memory
		        tile: wall
		        forSide: side.
	res3 := shadowCaster
		        shadowCastIsInMemory: memory
		        tile: shadowedFloor
		        forSide: side.
	self assert: res equals: false.
	self assert: res2 equals: false.
	self assert: res3 equals: true
	