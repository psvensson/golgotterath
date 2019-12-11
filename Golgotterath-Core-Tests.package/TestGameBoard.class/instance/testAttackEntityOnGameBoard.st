tests
testAttackEntityOnGameBoard
	| gameBoard gameMap player1 player2 weapon1 |
 	gameBoard := GameBoard new. 
	gameMap := gameBoard gameMap.
 	player1 := GameEntity new: 'malelight'.
	weapon1 := GameItem new: 'short_sword'.
	player1 weapon: weapon1.
	player2 := GameEntity new: 'skeleton'.
	gameMap addEntity: player1 at: 0@0.	
	gameMap addEntity: player2 at: 1@0.	
	gameBoard moveEntity: player1 dir: 	'right' callback: [
		:entity | Logger log: 'test callback entity position is ';log: entity boardPosition;cr.
		self assert: player1 boardPosition equals: 0@0
	].
	