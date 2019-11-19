accessing
initialize
	super initialize.
	itemname := 'blue_robe'.
	sprite := (Sprite new) 
		image: (self armortiles tile: itemname); 
		name: itemname;
		tileSize: (armortiles tileSize).