tests
testPickupItem
"Test that the move strategy can move towards a target"
	| entity gameboard gamemap robe1 item | 
	gameboard := GameBoard new.
	gamemap := gameboard gameMap .
	gamemap createDefaultMap.
	entity := GameEntity new: 'human'.
	gamemap addEntity: entity at: 0@0.
	robe1 := GameItem new: 'orange_robe'.
	gamemap addItem: robe1 at: 0@0.
	entity pickup.
	item := gamemap itemAt: 0@0 ifPresent: [  ].
	self assert: (entity inventory first) equals: robe1 .
	self assert: item equals: nil .