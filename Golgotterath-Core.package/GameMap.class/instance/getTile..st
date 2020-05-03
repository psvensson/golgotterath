accessing
getTile: tilename
	| tile |
	tile := tiles tile: tilename ifAbsent: 
	 [ tile := newtiles tile: tilename ].
	^ Sprite new
		image: tile;
		name: tilename