accessing
chooseTargetBoardPos
	"Select entity to move towards or choose a random one"
	| view entities pos others|
	"Transcript show: 'chooseTargetBoardPos';	cr."
	pos := nil.
	view := entity visibleMap.
	entities := view at: #entities.
	entities isEmpty
		ifTrue: [ Transcript 	show: 'choose target: random tile';	cr.
			pos :=(self chooseRandomTile: (view at: #tiles)) boardpos ]
		ifFalse: [  			
			"Transcript 	show: 'choose target: entity';	cr." 
			others := entities select: [ :a | a player ].
			Transcript show: 'choose target from entities: ',others asString;cr.	
			others ifNotEmpty: [ 
				pos :=(others first) boardpos		]		
							ifEmpty: [ pos :=(self chooseRandomTile: (view at: #tiles)) boardpos  ]		
		].
	Transcript show: 'choose target pos: ',pos asString;cr.		
	^ pos