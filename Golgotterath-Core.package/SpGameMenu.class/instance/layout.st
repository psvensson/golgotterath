accessing
layout

	^ SpGridLayout new
		  beColumnHomogeneous;
		  borderWidth: 0;
		  add: #button1 at: 1 @ 1;
		  add: #button2 at: 2 @ 1;
		  add: #button3 at: 3 @ 1;
		  add: #button4 at: 4 @ 1