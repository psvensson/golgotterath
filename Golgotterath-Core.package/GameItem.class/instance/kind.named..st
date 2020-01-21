accessing
kind: k named: tname 
	| tiles |
	k = 'armour' ifTrue: [  tiles := self armortiles ].
	k = 'weapon' ifTrue: [  tiles := self weapontiles ].
	k = 'misc' ifTrue: [  tiles := self misctiles ].
	k = 'potion' ifTrue: [  tiles := self potiontiles ].
	name := tname.	
	kind := k.
	sprite := (Sprite new) 
		image: (tiles tile: tname); 
		tileAdjustment: (self armortiles tileadjustx)@(self armortiles tileadjusty); 
		name: tname;
		tileSize: (armortiles tileSize).