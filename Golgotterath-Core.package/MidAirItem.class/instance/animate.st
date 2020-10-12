accessing
animate
	| oldpos |
	oldpos := position.
	position := position + self animationOffsetForboard: gamemap gameboard Position: position.
	Transcript
		show: 'MidAirItem drawOn position is now ' , position asString;
		cr.
	"sprite 
		position: position;
		drawOn: aCanvas"
	(LineMorph
		from: oldpos
		to: position
		color: Color white
		width: 1) 