initialization
createAnimation: animName start: start end: end
	| animation index |
	animation := Animation new.
	animation name: animName.
	index := 1.
	start to: end do: [ :frame | 
		| dir |
		dir := 1.
		(self getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: index direction: dir image: img.
				dir := dir + 1 ].
		index := index + 1 ].
	^ animation