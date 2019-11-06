actions
loadSpriteImage: img spriteWidth: _width 
	| index |
	Transcript
		show: 'Loading sprite file with width ';
		show: _width asString.
	spriteImages := Dictionary new.
	index := 0.
	1 to: image width - _width by: _width do:
		[ :x | 
			1 to: image height - _width by: _width do: 
				[ :y | | i aMorph |
					i := (img copy: (x @ y corner: (x + _width) @ (y + _width))).
					aMorph := ImageMorph new image: i.
					spriteImages at: index put: aMorph. 
					index := index +1. ]	].