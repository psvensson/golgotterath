accessing
getVerticalPosFor: pos side: side distance: distance

	| verticalAxis verticalPos |
	verticalAxis := side at: #vertical.
	verticalPos := pos perform: verticalAxis asSymbol.
	"Transcript show:'horizontalPos=',horizontalPos  asString,' from pos ',pos asString;cr."
	^ verticalPos + distance