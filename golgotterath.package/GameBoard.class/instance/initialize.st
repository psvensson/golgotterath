initialization
initialize
	super initialize .
	self createDefaultMap. 	
	self bounds: (0@0 corner: 1400@800). 
	self	initializeViewport.
	self createDefaultEntities.
 	