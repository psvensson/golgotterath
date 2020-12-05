initialization - private
initializeViewport

	viewPort := Dictionary new.
	viewPort at: #top put: -3.
	viewPort at: #left put: -3.
	viewPort at: #bottom put: 3.
	viewPort at: #right put: 3.

	shadowCaster := ShadowCast new.
	tileMemory := Dictionary new.
	visibleTiles := SortedCollection sortBlock: [ :a :b | 
		                self sortTiles: a b: b ].
	shadowCaster
		markVisible: [ :pos | 
			tileMemory at: pos ifPresent: [  ] ifAbsent: [ 
					visibleTiles add: pos.
					tileMemory at: pos put: pos ] ];
		isBlocking: [ :pos | 
			| rv |
			rv := gameMap isWallAt: pos.
			rv ];
		radius: 3