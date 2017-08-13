initialization
initialize

	super initialize .
	map := Dictionary new.
	viewPort := #( #top -> -3. #left -> -3. #bottom -> 3. #right -> 3 ).
	tiles := Tiles new.
 	tileSize := 32.
 	viewPort := Dictionary new.
 	viewPort at: #top put: -3.
 	viewPort at: #left put: -3.
 	viewPort at: #bottom put: 3.
 	viewPort at: #right put: 3 
	