event handler
shadowCastSides

	| top right bottom left |
	top := Dictionary new.
	bottom := Dictionary new.
	right := Dictionary new.
	left := Dictionary new.

	top at: #horizontal put: #x.
	top at: #rightdir put: 1.
	top at: #leftdir put: -1.

	bottom at: #horizontal put: #x.
	bottom at: #rightdir put: -1.
	bottom at: #leftdir put: 1.

	right at: #horizontal put: #y.
	right at: #rightdir put: 1.
	right at: #leftdir put: -1.

	left at: #horizontal put: #y.
	left at: #rightdir put: -1.
	left at: #leftdir put: 1.

	^ top right bottom left