test
testShadowCastCenterFromSideDistance

	| pos top toppos bottom bottompos left leftpos right rightpos distance |
	pos := 0 @ 0.
	distance := 1.
	top := ShadowCaster shadowCastSides at: #top.
	toppos := ShadowCaster 
		          shadowCastCenterFrom: pos
		          side: top
		          distance: distance.
	self assert: toppos equals: 0 @ -1.

	bottom := ShadowCaster  shadowCastSides at: #bottom.
	bottompos := ShadowCaster 
		             shadowCastCenterFrom: pos
		             side: bottom
		             distance: distance.
	self assert: bottompos equals: 0 @ 1.

	right := ShadowCaster shadowCastSides at: #right.
	rightpos := ShadowCaster
		            shadowCastCenterFrom: pos
		            side: right
		            distance: distance.
	self assert: rightpos equals: 1 @ 0.

	left := ShadowCaster shadowCastSides at: #left.
	leftpos := ShadowCaster
		           shadowCastCenterFrom: pos
		           side: left
		           distance: distance.
	self assert: leftpos equals: -1 @ 0