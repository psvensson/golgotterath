tests
testCollisionAvoidanceOnGameBoard
	| gameBoard gameMap player1 player2 |
 	gameBoard := GameBoard new. 
	gameMap := gameBoard gameMap.
 	player1 := GameEntity new: 'malelight'.
	gameMap addEntity: player1 at: (-1)@0.	
	player2 := GameEntity new: 'skeleton'.
	gameMap addEntity: player2 at: 1@0.		
	gameBoard moveEntity: player2 dir: 	'left'.
	gameBoard moveEntity: player1 dir: 	'right' callback: [
		:entity | Logger log: 'test callback entity position is ';log: entity boardPosition;cr.
		self assert: (player1 boardPosition) equals: (-1)@0
	].
	