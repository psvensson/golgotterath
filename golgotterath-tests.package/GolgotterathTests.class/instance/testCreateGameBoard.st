tests
testCreateGameBoard
	| gameMap tiles floor |
 	gameMap := GameBoard new. 
 	tiles := Tiles new.
 	floor := (Sprite new) image: (tiles tile: 'floor_grey').
 	-3 to: 3 do: [ :y | -3 to: 3 do: [ :x | gameMap addTile: floor atx: x y: y ] ].
 	self assert: gameMap map size equals: 49 