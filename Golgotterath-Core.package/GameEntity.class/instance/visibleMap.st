accessing
visibleMap

	| tiles entities items maps |
	tiles := OrderedCollection new.
	entities := SortedCollection sortBlock: [ :a :b | 
		            a boardPosition > b boardPosition ].
	items := OrderedCollection new.
	gameboardView reset.
	gameboardView calculateVisibleTilesAt: boardPosition.
	maps := Dictionary new.
	maps
		at: #items put: items;
		at: #tiles put: tiles;
		at: #entities put: entities.
	gameboardView visiblePositionsInOrder: [ :pos | 
		gamemap entityAt: pos ifPresent: [ :entity | entities add: entity ].
		gamemap itemAt: pos ifPresent: [ :item | items add: item ].
		tiles add: (gamemap mapAt: pos) ].
	^ maps