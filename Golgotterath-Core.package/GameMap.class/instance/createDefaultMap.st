initialization
createDefaultMap
	| start stop |
 	stop := self mapRadius.	
	start := stop negated.	
	start  to: stop do: 
		[ :y | start to: stop do: 
			[ :x | self addFloorAt: x@y ] ].
	0 to: 2 do:
		[ :wx | self addWallAt: wx@2 ].
	-2 to: 0 do:
		[ :wy | self addWallAt: 2@wy ].
	"self addDoorAt: 2@(-1).
	self addDoorAt: (-1)@2."