initialization
getText: aText color: color
	| t |
	
	t := StringMorph new.
	t backgroundColor: color.
	t color: Color white.
	t font: (LogicalFont familyName: 'Source Sans Pro' pointSize: self defaultTextSize).
	t contents: aText , '  '.
	
	"t left: 50."
	^  t