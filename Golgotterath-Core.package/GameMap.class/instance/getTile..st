accessing
getTile: tilename
	| tileClasses tile selectedClass sprite |
	tileClasses := {tiles.
	newtiles.
	crackedTiles}.
	tileClasses
		do: [ :tileClass | 
			tile
				ifNil: [ tile := tileClass
						perform: 'tile:' asSymbol , 'ifAbsent:' asSymbol
						withArguments: (Array with: tilename with: [  ]).
					tile ifNotNil: [ selectedClass := tileClass ] ] ].
	sprite := Sprite new
		image: tile;
		name: tilename.
	sprite tileAdjustment: selectedClass tileAdjustment.
	sprite hoffset: selectedClass hoffset.
	sprite voffset: selectedClass voffset.
	^ sprite