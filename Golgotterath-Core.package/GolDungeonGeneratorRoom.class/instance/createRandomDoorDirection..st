initialization
createRandomDoorDirection: direction
	| wall x y dir door |
	x := GolUtil getXForArea: area Dir: direction.
	y := GolUtil getYForArea: area Dir: direction.	
	wall := 4 atRandom.
	wall = 1
		ifTrue: [ x := x + ((self w - 1) atRandom).
			y := y + self h .
			dir := 'up' ].
	wall = 2
		ifTrue: [ x := x + self w.
			y := y + (self h - 1 atRandom).
			dir := 'right' ].
	wall = 3
		ifTrue: [ x := x + ((self w - 1) atRandom).
			dir := 'down' ].
	wall = 4
		ifTrue: [ y := y + (self h - 1) atRandom.
			dir := 'left' ].
	door := Dictionary new.
	door
		at: #pos put: x @ y;
		at: #direction put: dir.
	"Transcript show:'random door wall: ',wall asString,' pos: ',(x@y) asString;cr.	"
	^ door