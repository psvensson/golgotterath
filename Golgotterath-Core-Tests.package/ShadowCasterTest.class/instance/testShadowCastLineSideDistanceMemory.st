test
testShadowCastLineSideDistanceMemory

	| memory side res |
	self addTestArea.
	memory := Dictionary new.
	side := ShadowCaster shadowCastSides at: #top.
	res := shadowCaster 
		       shadowCastLine: 0 @ 0
		       side: side
		       distance: 1
		       memory: memory.
	self assert: res size equals: 2.