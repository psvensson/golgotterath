accessing
drawOn: aCanvas gameboard: aGameboard
	| pos |
	pos := (baseSprite calculatePositionFromGameboard: aGameboard) + offset.
	image ifNotNil: [ 
		image 
			position: pos;
			drawOn: aCanvas ].
	text ifNotNil: [ 
		text 
			position: pos;
			drawOn: aCanvas ]