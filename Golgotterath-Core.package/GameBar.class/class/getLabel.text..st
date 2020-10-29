initialization
getLabel: label text: aText
	| m l t |
	m := Morph new.
	m layoutPolicy: RowLayout new; color: Color transparent.
	
	l := StringMorph new.
	l backgroundColor: Color darkGray.
	l color: Color lightOrange .
	l font: (LogicalFont familyName: 'Source Sans Pro' pointSize: self defaultTextSize ).
	l contents: label, ' '.
	
	t := StringMorph new.
	t backgroundColor: Color darkGray.
	t color: Color white.
	t font: (LogicalFont familyName: 'Source Sans Pro' pointSize: self defaultTextSize).
	t contents: aText , '  '.
	"t left: 50."
	m addMorph: t; addMorph: l.
	^  m