accessing
createDeadEntityitem
	| item name longname sprite image frames directions |
	name := (self name asString) asLowercase.
	longname := 'Dead ',self name.
	frames := (self animatedSprite getAnimation: 'die') frames.
	directions := frames at: (frames keys last).
	image := directions at: animatedSprite direction .
	sprite := (Sprite new) 
		image: image; 		
		name: name;
		tileSize: self animatedSprite tileSize.
	item := GameItem new.
	item 
		kind: 'remains'; 
		name: 'Dead ',name;
		longname: longname;
		sprite: sprite;
		attributes: 
			(Dictionary newFrom: { #name -> name.
				#kind->'remains'.
				#longname -> longname }).
	^ item