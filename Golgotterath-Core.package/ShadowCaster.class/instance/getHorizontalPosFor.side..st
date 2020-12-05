accessing
getHorizontalPosFor: pos side: side

	| horizontalAxis horizontalPos |
	horizontalAxis := side at: #horizontal.
	horizontalPos := pos perform: horizontalAxis asSymbol.
	"Transcript show:'horizontalPos=',horizontalPos  asString,' from pos ',pos asString;cr."
	^ horizontalPos