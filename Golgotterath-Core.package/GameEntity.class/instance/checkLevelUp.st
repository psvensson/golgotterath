accessing
checkLevelUp
	| explevel |
	explevel := 1.
	GameEntity expLevels
		keysAndValuesDo: [ :key :value | 
			exp > value
				ifTrue: [ explevel := key ] ].
	explevel > level ifTrue: [ self gainLevel: explevel  ]			