accessing
getTile: tilename
	^ (Sprite new) image: (tiles tile: tilename); name: tilename.