tests
testEffectCreation
	| entity1 effect1 aCanvas gameboard gamemap |
	gameboard := GameBoard new.
	gamemap := gameboard gameMap.
	gamemap createDefaultMap.
	entity1 := GameEntity new: 'human'.
	gamemap addEntity: entity1 at: 0 @ 0.
	effect1 := TextEffect new.
	effect1 text: 'foo'.
	entity1 addEffect: effect1 .
	aCanvas := Canvas new.
	entity1 animateEffectsOn: aCanvas.
	
	self assert: effect1 step equals: 2 .