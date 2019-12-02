tests
testMoveStrategy
"Test that the move strategy can move towards a target"
	| entity gameboard gamemap strategy targetpos path result | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	gamemap createDijkstraGraph.
	entity := GameEntity new: 'human'.
	gamemap addEntity: entity at: 0@0.
	strategy := DefaultMoveStrategy new.
	entity addStrategy: strategy .
	targetpos := ((entity boardpos) x +2)@((entity boardpos) y + 7).
	strategy targetBoardPos: targetpos .
	path := strategy getPathToTarget .
	result := path last.
	self assert: result equals: targetpos asString  .