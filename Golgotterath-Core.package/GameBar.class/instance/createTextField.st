initialization
createTextField

	text := StringMorph new.
	text
		backgroundColor: Color darkGray;
		layoutInset: 5;
		listDirection: #rightToLeft;
		wrapCentering: #topLeft;
		cellPositioning: #bottomLeft;
		color: Color lightOrange;
		font: (LogicalFont
				 familyName: 'Source Sans Pro'
				 pointSize: self class defaultTextSize).
	text contents: 'Foo'.
	"text top:0;left:200."
	^ text