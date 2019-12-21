drawing
paintDarkness: worldpos canvas: aCanvas
	| diff diffx diffy alpha image position colour |
		diffx := (worldpos x - player boardPosition x) abs.
		diffy := (worldpos y - player boardPosition y) abs.
		diff := diffx max: diffy.
		alpha := 1.0 - (diff * 0.2) .
		position := GolUtil calculatePositionFromGameboard: self position: worldpos.
		position := position + 64.
		colour := Color gray: alpha.
		colour alpha: 0.9.
		image := Morph new.
		image 
			width: 64;
			height: 64;
			position: position ;
			color: colour;
			drawOn: aCanvas  