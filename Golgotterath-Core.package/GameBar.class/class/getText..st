initialization
getText: aText 
	| t |
	
	t := StringMorph new.
	t backgroundColor: Color transparent .
	t color: Color white.
	t font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18).
	t contents: aText , '  '.
	
	"t left: 50."
	^  t