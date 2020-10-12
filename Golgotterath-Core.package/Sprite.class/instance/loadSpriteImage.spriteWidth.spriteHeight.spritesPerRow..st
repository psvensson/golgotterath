actions
loadSpriteImage: img spriteWidth: _width spriteHeight: _height spritesPerRow: _spr
	| index sprites |
	spritesPerRow := _spr.
	sprites := Dictionary new.
	index := 1.
	0 to: img width - _width by: _width do: [ :x | 
		0 to: img height - _height by: _height do: [ :y | 
			| i aMorph |
			i := img
				copy:
					((x + hoffset) @ (y + voffset)
						corner: (x + _width - hoffset) @ (y + _height - voffset)).			
								
			aMorph := AlphaImageMorph new image: i.
			aMorph resize: tileSize @ tileSize.	
			"aMorph borderColor: (Color green); borderWidth: 1."
			sprites at: index put: aMorph.
			index := index + 1 ] ].
	spriteImages := sprites