accessing
getSpriteImagesColumn: c
	| column |
	column := OrderedCollection new.
	1 to: 8 do: [ :i | 
		| img |
		img := spriteImages at: (c - 1) * spritesPerRow + c.
		column add: img ].
	^ column