initialization
initialize 
	super initialize .
	text := StringMorph new.	
	self addMorph: text.	
	self color: (Color darkGray ).
	text contents: 'Foo'.