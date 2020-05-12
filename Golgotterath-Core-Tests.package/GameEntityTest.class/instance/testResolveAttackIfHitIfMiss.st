test
testResolveAttackIfHitIfMiss
	| e1 e2 didhit |
	e1 := GameEntity new: 'human'.
	e2 := GameEntity new: 'goblin'.
	e1 ac: 2.
	e2
		resolveAttack: e1
		ifHit: [ didhit := true ]
		ifMiss: [ didhit := false ].
	self assert: didhit equals: false