tests
testMoveEntityOnGameBoard
	| gameBoard gameMap player1 |
 	gameBoard := GameBoard new. 
	gameMap := gameBoard gameMap.
 	player1 := MaleLight new.
	player1 play: 'walk'.	
	gameMap addEntity: player1 at: 0@0.	
	gameBoard moveEntity: player1 dir: 	'up' callback: [
			:entity | Transcript show: 'test callback entity position is ',entity boardpos asString;cr.
	].
	
	self assert: player1 boardpos equals: 0@1