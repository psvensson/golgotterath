initialization
initialize 
	super initialize .
	text := StringMorph new.	
	self addMorph: text.	
	self color: (Color darkGray ).
	text backgroundColor: (Color darkGray ).
	text color: (Color white).
	text font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 110).
	text font forceBold.
	text contents: ' Game Over.. '