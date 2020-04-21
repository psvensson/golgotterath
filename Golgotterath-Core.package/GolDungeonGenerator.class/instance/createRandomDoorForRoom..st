initialization
createRandomDoorForRoom: room
	| wall x y dir door |
	wall := 4 atRandom.	
	wall = 1
		ifTrue: [ y := room pos y.
			x := room pos x + room w atRandom.
			dir := 'up' ].
	wall = 2
		ifTrue: [ x := room pos x + room w.
			y := room h atRandom.
			dir := 'right' ].
	wall = 3
		ifTrue: [ x := room pos x + room w atRandom.
			y := room pos y + room h.
			dir := 'down' ].
	wall = 4
		ifTrue: [ x := room pos x.
			y := room h atRandom.
			dir := 'left' ].
	door := Dictionary new.
	door
		at: #pos put: x @ y;
		at: #direction put: dir.
	Transcript show:'random door wall: ',wall asString,' pos: ',(x@y) asString;cr.	
	^ door