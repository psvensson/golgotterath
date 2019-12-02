accessing
chooseTargetBoardPos
"Select entity to move towards or choose a random one"
	| view entities pos |
	pos := nil.
	view := entity visibleMap .
	entities := view at: #entities.
	pos := entities isEmpty 
		ifTrue: [  
			Transcript show: 'choose target: random tile';cr.
			(self chooseRandomTile: (view -> #tiles)) boardpos ]
		ifFalse: [ 
			Transcript show: 'choose target: entity';cr.
			(entities first) boardpos ].
		
	^ pos