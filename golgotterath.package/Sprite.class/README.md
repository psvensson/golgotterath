Base class for animated sprites

Usage: 

sprite := Sprite new.
	sprite load: 'images/male_unarmored.png' spriteWidth: 256 spritesPerRow: 8.
	animation := Animation new.
	animation position: 1700@1000	.
	animation named: 'walk'.
	1 to: 4 do: [ :frame | 
		| dir |
		dir := 1.
		(sprite getSpriteImagesColumn: frame)
			do: [ :img | 
				animation addFrame: frame direction: dir image: img.
				dir := dir + 1 ] ].
	animation direction: 6.
	animation openInWorld .
	animation play.		
