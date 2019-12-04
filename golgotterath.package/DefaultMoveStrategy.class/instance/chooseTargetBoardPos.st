accessing
chooseTargetBoardPos
	"Select entity to move towards or choose a random one"
	| view entities pos target |
	pos := nil.
	view := entity visibleMap.
	entities := view at: #entities.	
	entities isEmpty
		ifTrue: [	pos :=(self chooseRandomTile: view) boardpos ]
		ifFalse: [ 	target  := self chooseRandomTarget: view.	
							target ifNotNil: [ pos := target boardpos ]
							 ifNil: [ pos :=(self chooseRandomTile: view) boardpos  ]		
		].	
	^ pos