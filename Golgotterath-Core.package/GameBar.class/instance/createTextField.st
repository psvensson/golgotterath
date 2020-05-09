initialization
createTextField
	text := StringMorph new.
	text backgroundColor: Color darkGray.
	text color: Color lightOrange .
	text font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 20).
	text contents: 'Foo'.
	text top:200;left:200.
	^ text