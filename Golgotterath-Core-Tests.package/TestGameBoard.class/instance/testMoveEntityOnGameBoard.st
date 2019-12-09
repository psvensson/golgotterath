tests
testMoveEntityOnGameBoard
	| gameBoard gameMap player1 |
 	gameBoard := GameBoard new. 
	gameMap := gameBoard gameMap.
 	player1 := GameEntity new: 'malelight'.
	gameMap addEntity: player1 at: 0@0.	
	gameBoard moveEntity: player1 dir: 	'up' callback: [
		:entity | Logger log: 'test callback entity position is ';log: entity boardPosition;cr.
		self assert: player1 boardPosition equals: 0@1
	].
	