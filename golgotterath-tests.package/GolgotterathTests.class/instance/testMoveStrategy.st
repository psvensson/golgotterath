tests
testMoveStrategy
"Test that the move strategy can move towards a target"
	| entity gameboard gamemap strategy path result | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	entity := GameEntity new: 'human'.
	gamemap addEntity: entity at: 0@0.
	strategy := DefaultMoveStrategy new.
	entity addStrategy: strategy .
	strategy targetBoardPos: (0)@(-2).
	path := strategy getPathToTarget .
	result := path last.
	self assert: result equals: (0)@(-2).