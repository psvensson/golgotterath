accessing
generateEntities
	1 + level
		timesRepeat: [ 4 atRandom = 1
				ifTrue: [ entities add: self generateEntity  ] ]