tests
testCreateAnimation
	| sprite animation |
	sprite := AnimatedSprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256 spritesPerRow: 8.
	animation := Animation new.
	animation named: 'walk'.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(sprite getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	sprite addAnimation: animation.
	self assert: sprite spriteImages size equals: 64