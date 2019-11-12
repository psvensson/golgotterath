adding
addTile: tileMorph atx: x y: y
	"Transcript show: 'adding tile ',x asString,',',y asString ;cr."
	tileMorph boardx: x; boardy: y.
	map at: x@y put: tileMorph .