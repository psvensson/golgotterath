tests
testCreateGameBoard
	| gameBoard tiles floor |
 	gameBoard := GameBoard new. 
 	tiles := Tiles new.
 	floor := tiles tile: 'floor'.
 	-3 to: 3 do: [ :y | -3 to: 3 do: [ :x | gameBoard addTile: floor at: x @ y ] ].
 	self assert: gameBoard map size equals: 49 