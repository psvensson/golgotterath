tests
testChooseTargetStrategy
"Test that the move strategy can move towards a target"
	| entity gameboard gamemap graph strategy result | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	entity := GameEntity new: 'human'.
	gamemap addEntity: entity at: 0@0.
	strategy := DefaultMoveStrategy new.
	entity addStrategy: strategy .
	graph := gamemap createDijkstraGraphAt: 0@0 radius: 8.
	result := strategy chooseTargetBoardPos .
	
	self assert: result isNotNil   .