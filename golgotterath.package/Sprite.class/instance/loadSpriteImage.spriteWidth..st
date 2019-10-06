actions
loadSpriteImage: img spriteWidth: _width 
	|index sprites |
	Transcript
		show: 'Loading sprite file with width ';
		show: _width asString.
	sprites := Dictionary new.
	index := 1.
	0 to: image width - _width by: _width do:
		[ :x | 
			0 to: image height - _width by: _width do: [ :y | | i aMorph |
				i := (img copy: (x @ y corner: (x + _width) @ (y + _width))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites