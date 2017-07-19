initialization
initialize
	super initialize.
	self load: 'images/male_unarmored.png' spriteWidth: 256 spritesPerRow: 8.
	#('walk')
		do: [ :animationName | 
			| animation |
			animation := Animation new.
			animation named: animationName.
			1 to: 4 do: [ :frame | 
				| dir |
				dir := 1.
				(self getSpriteImagesColumn: frame)
					do: [ :img | 
						animation addFrame: frame direction: dir image: img.
						dir := dir + 1 ].
				self addAnimation: animation ] ].
	