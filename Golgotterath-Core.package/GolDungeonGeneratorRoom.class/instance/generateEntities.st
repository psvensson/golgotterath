accessing
generateEntities
	3
		timesRepeat: [ 6 atRandom = 1
				ifTrue: [ entities add: self generateEntity  ] ]