tests
testRouting
	| map entity1 entity2 graph | 
	map := SetupTestGameMap getGameMap .
	entity1 := GameEntity new: 'malelight'.
	map addEntity: entity1 at: 0@0.
	entity2 := GameEntity new: 'skeleton'.
	map addEntity: entity2 at: 0@(-2).
	graph := map createDijkstraGraphAt: entity1 boardPosition radius: 2.
	map findPathInGraph: graph 
		from: (entity1 boardPosition) 
		to: (entity2 boardPosition) callback: [ :path | self assert: path isNotEmpty ]
	