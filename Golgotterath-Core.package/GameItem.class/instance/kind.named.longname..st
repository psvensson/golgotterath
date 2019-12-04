accessing
kind: k named: tname longname: lname
	| tiles |
	k = 'armour' ifTrue: [  tiles := self armortiles ].
	k = 'weapon' ifTrue: [  tiles := self weapontiles ].
	itemname := tname.	
	longname := lname.	
	sprite := (Sprite new) 
		image: (tiles tile: tname); 
		tileadjustx: (self armortiles tileadjustx); 
		tileadjusty: (self armortiles tileadjusty); 
		name: tname;
		tileSize: (armortiles tileSize).