tests
testVisibleMap
"Test that the move strategy can move towards a target"
	| entity gameboard gamemap result | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	gamemap createDijkstraGraph.
	entity := GameEntity new: 'human'.
	gamemap addEntity: entity at: 0@0.
	result := entity visibleMap .
	result inspect.
	self assert: result -> #tiles isNotNil .