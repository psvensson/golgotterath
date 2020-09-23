initialization
createTextField
	text := StringMorph new.
	text backgroundColor: Color darkGray.
	text color: Color lightOrange .
	text font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18).
	text contents: 'Foo'.
	"text top:0;left:200."
	^ text