actions
loadSpriteImage: img spriteWidth: _width spritesPerRow: _spr
	| index sprites offset |
	offset := 64.
	Transcript
		show: 'Loading sprite file with width ';
		show: _width asString; cr.
		spritesPerRow := _spr.
	sprites := Dictionary new.
	index := 1.
	0 to: img width - _width by: _width do:
		[ :x | 
			0 to: img height - _width by: _width do: [ :y | | i aMorph |
				i := (img copy: ((x + offset) @ (y + offset) corner: (x + _width - offset) @ (y + _width - offset))).
				aMorph := AlphaImageMorph new image: i.
				"aMorph borderColor: (Color green); borderWidth: 1."
				sprites at:index put: aMorph. index := index +1. ] ].
	spriteImages := sprites