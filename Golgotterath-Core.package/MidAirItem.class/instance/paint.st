accessing
paint
	| oldpos line |
	oldpos := position.
	position := position + (self calculateAnimationOffset ).
	Transcript
		show: 'MidAirItem drawOn position is now ' , position asString;
		cr.
		line := (LineMorph
		from: oldpos
		to: position
		color: Color white
		width: 1).
	sprite 
		position: position.
	sprite image addMorph: line .	
	^ line