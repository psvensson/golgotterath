initialization
createSpecifiedAnimation: animName anims: anims
	| animation |
	animation := Animation new.
	animation name: animName. 
	anims do: [ :frame | 
		| dir |
		dir := 1.
		Transcript show: 'createSpecificAnimation frame ',frame asString;cr.
		(self getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	^ animation .	