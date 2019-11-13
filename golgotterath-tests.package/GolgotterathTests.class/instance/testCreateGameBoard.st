tests
testCreateGameBoard
	| gameBoard tiles floor |
 	gameBoard := GameBoard new. 
 	tiles := Tiles new.
 	floor := (Sprite new) image: (tiles tile: 'floor_grey').
 	-3 to: 3 do: [ :y | -3 to: 3 do: [ :x | gameBoard addTile: floor atx: x y: y ] ].
 	self assert: gameBoard map size equals: 49 