actions
loadSpriteImage: img spriteWidth: _width spritesPerRow: _spr
	| index sprites |
	Transcript
		show: 'Loading sprite file with width ';
		show: _width greaseString; cr.
		spritesPerRow := _spr.
	sprites := Dictionary new.
	index := 1.
	0 to: img width - _width by: _width do:
		[ :x | 
			0 to: img height - _width by: _width do: [ :y | | i aMorph |
				i := (img copy: (x @ y corner: (x + _width) @ (y + _width))).
				aMorph := ImageMorph new image: i.
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites