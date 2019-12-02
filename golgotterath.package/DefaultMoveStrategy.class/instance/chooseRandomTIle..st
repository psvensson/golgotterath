accessing
"protocol: #'as yet unclassified'"

chooseRandomTIle: tiles
	| index |
	index := tiles size atRandom .
	^ tiles at: index