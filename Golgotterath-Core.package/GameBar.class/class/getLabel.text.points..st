initialization
getLabel: label text: aText points: points
	| m l t |
	m := Morph new.
	m layoutPolicy: RowLayout new; color: Color transparent .
	
	l := StringMorph new.
	l backgroundColor: Color darkGray.
	l color: Color lightOrange .
	l font: (LogicalFont familyName: 'Source Sans Pro' pointSize: points).
	l contents: label, ' '.
	
	t := StringMorph new.
	t backgroundColor: Color darkGray.
	t color: Color white.
	t font: (LogicalFont familyName: 'Source Sans Pro' pointSize: points).
	t contents: aText , '  '.
	"t left: 50."
	m addMorph: t; addMorph: l.
	^  m