tests
testDropItem
"Test that the move strategy can move towards a target"
	| entity gameboard gamemap robe1 item | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	entity := GameEntity new: 'human'.
	gamemap addEntity: entity at: 0@0.
	robe1 := GameItem new: 'orange_robe'.
	entity inventory add: robe1 .
	entity dropInventoryItem: robe1.
	item := gamemap itemAt: 0@0 ifPresent: [ :onfloor | onfloor  ].
	self assert: item equals: robe1 .
	self assert: entity inventory size equals: 0 .