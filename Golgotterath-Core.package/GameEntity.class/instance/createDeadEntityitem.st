accessing
createDeadEntityitem

	| item name longname newsprite image frames directions |
	name := self name asString asLowercase.
	longname := 'Dead ' , self name.
	frames := (self animatedSprite getAnimation: 'die') frames.
	directions := frames at: frames keys last.
	image := directions at: animatedSprite direction.
	newsprite := Sprite new
		             image: image;
		             name: name;
		             tileSize: self animatedSprite tileSize;
		             tileAdjustment: self animatedSprite tileAdjustment.
	item := GameItem new.
	item
		kind: 'remains';
		name: 'Dead ' , name;
		longname: longname;
		sprite: newsprite;
		attributes: (Dictionary newFrom: { 
						 (#name -> name).
						 (#kind -> 'remains').
						 (#longname -> longname) }).
	^ item