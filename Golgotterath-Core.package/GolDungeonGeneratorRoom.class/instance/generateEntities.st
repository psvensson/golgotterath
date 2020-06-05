accessing
generateEntities
	1 + level
		timesRepeat: [ (10 - level) atRandom = 1
				ifTrue: [ entities add: self generateEntity  ] ]