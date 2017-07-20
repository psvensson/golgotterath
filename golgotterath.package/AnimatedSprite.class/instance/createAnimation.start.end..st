intializer
createAnimation: name start: start end: end
	| animation |
	animation := Animation new.
	animation named: name.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(self getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	^ animation .		