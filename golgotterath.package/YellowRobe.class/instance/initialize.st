accessing
initialize
	super initialize.
	itemname := 'yellow_robe'.
	sprite := (Sprite new) 
		image: (self armortiles tile: itemname); 
		name: itemname;
		tileadjustx: (self armortiles tileadjustx); 
		tileadjusty: (self armortiles tileadjusty); 
		tileSize: (armortiles tileSize).