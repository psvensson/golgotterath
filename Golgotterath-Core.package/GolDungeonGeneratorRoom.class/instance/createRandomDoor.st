initialization
createRandomDoor
	| wall x y dir door |
	wall := 4 atRandom.
	wall = 1
		ifTrue: [ y := pos y.
			x :=  pos x + (w-1) atRandom .
			dir := 'up' ].
	wall = 2
		ifTrue: [ x := pos x + w.
			y :=  pos y + (h-1) atRandom .
			dir := 'right' ].
	wall = 3
		ifTrue: [ x :=  pos x + (w-1) atRandom .
			y := pos y + h.
			dir := 'down' ].
	wall = 4
		ifTrue: [ x := pos x.
			y :=  pos y + (h-1) atRandom .
			dir := 'left' ].
	door := Dictionary new.
	door
		at: #pos put: x @ y;
		at: #direction put: dir.
	Transcript show:'random door wall: ',wall asString,' pos: ',(x@y) asString;cr.	
	^ door