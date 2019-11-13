accessing
paint: gameboard  at: aCanvas pos: pos
	| isoPoint position adjustCentre animation img |
	isoPoint := self toISO: (pos x @ pos y).
	adjustCentre := self toISO: (gameboard width / 2) @ 0.
	position := adjustCentre + ((isoPoint x * self tileSize) @ (isoPoint y * self tileSize)).
	"Transcript
		show:
			'drawing entity ' , ' at ' , position asString
				, ' isoPoint = ' , isoPoint asString , ' adjustCentre =  '
				, adjustCentre asString , ' tileSize ' , self tileSize asString;
		cr."
	animation := self getOldAnimation.	
	animation position: (position + gameboard position).
	animation currentFrame
		ifNotNil: [ 
			img := animation currentFrame.
			img position: position + self getAnimationStep + gameboard gbOffset.
			img drawOn: aCanvas ]