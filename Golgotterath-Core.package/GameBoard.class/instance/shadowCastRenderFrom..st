drawing
shadowCastRenderFrom: pos

	| distance memory |
	distance := 0.
	memory := Dictionary new.
	[ distance < player lightradius ] whileTrue: [ 
		distance := distance + 1.
		self shadowCastRenderFrom: pos distance: distance memory: memory]