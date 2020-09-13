accessing
generateTreasures
	3
		timesRepeat: [ 4 atRandom = 1
				ifTrue: [ items add: self generateTreasure ] ]