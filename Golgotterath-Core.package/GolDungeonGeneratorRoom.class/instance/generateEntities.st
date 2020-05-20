accessing
generateEntities
	1 + level
		timesRepeat: [ 6 atRandom = 1
				ifTrue: [ entities add: self generateEntity  ] ]