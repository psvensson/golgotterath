accessing
"protocol: #'as yet unclassified'"

chooseRandomTile: view
	| index tiles tile |
	tiles := view at: #tiles.
	index := tiles size atRandom .
	tile := tiles at: index.
	Transcript show: entity name,' chose random tile: ',tile boardpos asString;cr.
	^ tile