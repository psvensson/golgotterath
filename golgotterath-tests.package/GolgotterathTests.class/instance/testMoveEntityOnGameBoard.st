tests
testMoveEntityOnGameBoard
	| gameBoard gameMap player1 slot |
 	gameBoard := GameBoard new. 
	gameMap := gameBoard gameMap.
 	player1 := MaleLight new.
	player1 play: 'walk'.	
	gameMap addEntity: player1 at: 0@0.	
	gameBoard moveEntity: player1 dir: 	'up' callback: [
			:entity | Transcript show: 'test callback entity position is ',entity pos asString;cr.
	].
	
	self assert: player1 pos equals: 0@1