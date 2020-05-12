instance creation
expLevels
	| dict |
	dict := Dictionary new.
	dict at: 1 put: 0.
	dict at: 2 put: 2000.
	dict at: 3 put: 4000.
	dict at: 4 put: 8000.
	dict at: 5 put: 18000.
	dict at: 6 put: 35000.
	dict at: 7 put: 70000.
	dict at: 8 put: 125000.
	dict at: 9 put: 250000.
	dict at: 10 put: 500000.
	dict at: 11 put: 750000.
	^ dict