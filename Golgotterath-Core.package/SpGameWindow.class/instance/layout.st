accessing
layout

	^ SpBoxLayout newVertical
		  add: #toolbar
		  expand: false
		  fill: false
		  padding: 0;
		  add: (SpBoxLayout newHorizontal
				   add: #game
				   withConstraints: [ :constraints | 
					   constraints height: 700 ];
				   yourself);
		  add: #menu;
		  yourself