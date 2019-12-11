tests
testCombat
"Test that the move strategy can move towards a target"
	| entity1 entity2 gameboard gamemap orighp | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	entity1 := GameEntity new: 'human'.
	gamemap addEntity: entity1 at: 0@0.
	entity2 := GameEntity new: 'skeleton'.
	gamemap addEntity: entity2 at: 1@0.
	orighp := entity2 hp.
	entity1 attack: (entity2 boardPosition) .
	self assert: entity2 hp < orighp .