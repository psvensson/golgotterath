test
testShadowCastRenderFromDistanceMemory

	| memory side res |
	self addTestArea.
	memory := Dictionary new.
	side := ShadowCaster shadowCastSides at: #top.
	shadowCaster shadowCastRenderFrom: 0@0 distance: 2 memory: memory.
	res := shadowCaster shadowCastRenderFrom: 0@0 distance: 3 memory: memory.
	
	self assert: res size equals: 6