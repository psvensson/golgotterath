initialization
getText: aText points: points color: color
	| t |
	
	t := StringMorph new.
	t backgroundColor: Color darkGray .
	t color: color.
	t font: (LogicalFont familyName: 'Source Sans Pro' pointSize: points).
	t contents: aText , '  '.
	"t left: 50."
	^  t