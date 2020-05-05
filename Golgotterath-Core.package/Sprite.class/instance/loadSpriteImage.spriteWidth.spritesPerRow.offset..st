actions
loadSpriteImage: img spriteWidth: _width spritesPerRow: _spr offset: offset
	| index sprites  |
	"Transcript
		show: 'Loading sprite file with width ';
		show: _width asString; cr."
		spritesPerRow := _spr.
	sprites := Dictionary new.
	index := 1.
	0 to: img width - _width by: _width do:
		[ :x | 
			0 to: img height - _width by: _width do: [ :y | | i aMorph |
				i := (img copy: ((x + hoffset) @ (y + voffset) corner: (x + _width - hoffset) @ (y + _width - voffset))).
				"i setExtent: 64@64 depth: 8."
				aMorph := AlphaImageMorph new image: i.
				
				"aMorph borderColor: (Color green); borderWidth: 1."
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites