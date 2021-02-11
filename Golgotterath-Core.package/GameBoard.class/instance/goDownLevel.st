action
goDownLevel

	currentLevel < 10 ifTrue: [ self goToLevel: currentLevel + 1 ]