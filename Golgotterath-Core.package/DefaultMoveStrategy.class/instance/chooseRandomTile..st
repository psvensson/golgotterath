accessing
"protocol: #'as yet unclassified'"

chooseRandomTile: view
	| index tiles tile |
	tiles := view at: #tiles.
	index := tiles size atRandom .
	tile := tiles at: index.
	Logger log: entity name;log:' chose random tile: ';
		log:tile boardPosition ;cr.
	^ tile