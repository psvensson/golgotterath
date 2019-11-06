initialization
createAnimation: name start: start end: end
	| animation |
	animation := Animation new.
	animation name: name. 
	start to: end do: [ :frame | 
		| dir |
		dir := 1.
		(self getSpriteImagesColumn: frame)
			do: [ :img | 
				"Transcript show: 'createAnimation adding animation ';
				show: name;
				show: ' direction ';
				show: dir;
				show: ' frame ';
				show: frame; cr."
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	^ animation .	