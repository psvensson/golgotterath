accessing
chooseRandomTile: tiles
	| index |
	index := tiles size atRandom .
	^ tiles at: index