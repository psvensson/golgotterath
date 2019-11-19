accessing
kind: k named: name 
	| tiles |
	k = 'armour' ifTrue: [  tiles := self armortiles ].
	itemname := name.	
	sprite := (Sprite new) 
		image: (tiles tile: name); 
		tileadjustx: (self armortiles tileadjustx); 
		tileadjusty: (self armortiles tileadjusty); 
		name: name;
		tileSize: (armortiles tileSize).