accessing
getSpriteImagesColumn: c
	^ (1 to: 8) collect: [ :i | 
		  | col row |
		  col := (c) * 8.
		  row := i .
		  spriteImages at: (row + col) -1 ]
	"^ (1 to: 8) collect: [ :i | 
		  spriteImages at: i - 1 * spritesPerRow + c ]"