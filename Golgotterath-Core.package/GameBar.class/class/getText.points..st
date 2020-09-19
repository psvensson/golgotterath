initialization
getText: aText points: points
	| t |
	
	t := StringMorph new.
	t backgroundColor: Color transparent .
	t color: Color white.
	t font: (LogicalFont familyName: 'Source Sans Pro' pointSize: points).
	t contents: aText , '  '.
	"t left: 50."
	^  t