accessing
animate
	| oldpos |
	oldpos := position.
	position := position + self calculateAnimationOffset.
	timespan = 1 ifTrue: [ position := position + self calculateAnimationOffset. ].
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