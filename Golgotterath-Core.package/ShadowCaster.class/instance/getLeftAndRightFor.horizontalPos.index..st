accessing
getLeftAndRightFor: side horizontalPos: horizontalPos index: i

	| stepRight stepLeft right left |
	right := side at: #rightdir.
	left := side at: #leftdir.
	stepRight := horizontalPos + (i * right).
	stepLeft := horizontalPos + (i * left).
	"Transcript show:'horizontalPos: ',horizontalPos asString,', left: ',left asString,', right: ',right asString,', stepLeft: ',stepLeft asString,', stepRight: ',stepRight asString,', i: ',i asString;cr."
	^ { 
		  stepRight.
		  stepLeft }