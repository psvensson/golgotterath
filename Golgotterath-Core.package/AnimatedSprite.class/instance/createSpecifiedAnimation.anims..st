initialization
createSpecifiedAnimation: animName anims: anims
	| animation index |
	animation := Animation new.
	animation name: animName. 
	index := 1.
	anims do: [ :frame | 
		| dir |
		dir := 1.
		"Transcript show: 'createSpecificAnimation frame ',frame asString;cr."
		(self getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: index direction: dir image: img.
				dir := dir + 1 ].
		index := index +1.	
	 ].
	^ animation .	