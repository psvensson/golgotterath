event handler
shadowCastSides

	| top right bottom left rv |
	rv := Dictionary new.
	top := Dictionary new.
	bottom := Dictionary new.
	right := Dictionary new.
	left := Dictionary new.

	top at: #name put: #top.
	top at: #horizontal put: #x.
	top at: #vertical put: #y.
	top at: #verticalforward put: -1.
	top at: #rightdir put: -1.
	top at: #leftdir put: 1.

	bottom  at: #name put: #bottom.
	bottom at: #horizontal put: #x.
	bottom at: #vertical put: #y.
	bottom at: #verticalforward put: 1.
	bottom at: #rightdir put: 1.
	bottom at: #leftdir put: -1.

	right  at: #name put: #right.
	right at: #horizontal put: #y.
	right at: #vertical put: #x.
	right at: #verticalforward put: 1.
	right at: #rightdir put: 1.
	right at: #leftdir put: -1.

	left  at: #name put: #left.
	left at: #horizontal put: #y.
	left at: #vertical put: #x.
	left at: #verticalforward put: -1.
	left at: #rightdir put: -1.
	left at: #leftdir put: 1.

	rv
		at: #top put: top;
		at: #bottom put: bottom;
		at: #right put: right;
		at: #left put: left.
	^ rv