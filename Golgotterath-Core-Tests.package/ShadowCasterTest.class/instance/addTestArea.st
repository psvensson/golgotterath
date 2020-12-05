test
addTestArea

	"Create a test area, with a wall, 2 squares from the central position, with a floor squared 
	beyond that, for each of the four directions/sides"

	-3 to: 3 do: [ :y | -3 to: 3 do: [ :x | self addTestFloorAt: x @ y ] ].
	self addTestWallAt: 0@(-2).
	self addTestWallAt: 0@(2).
	self addTestWallAt: (-2)@0.
	self addTestWallAt: 2@0.