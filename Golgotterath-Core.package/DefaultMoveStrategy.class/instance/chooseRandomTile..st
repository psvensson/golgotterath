accessing
"protocol: #'as yet unclassified'"

chooseRandomTile: view
	| index tiles tile pos |
	tiles := view at: #tiles.
	index := tiles size atRandom .
	tile := tiles at: index.
	pos := tile boardPosition .
	Logger log: entity name;log:' chose random tile: ';log:tile boardPosition ;cr.
	^ pos