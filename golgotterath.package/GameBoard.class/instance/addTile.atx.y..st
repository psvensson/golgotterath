adding
addTile: tileSprite atx: x y: y
	"Transcript show: 'adding tile ',x asString,',',y asString ;cr."
	tileSprite boardx: x; boardy: y.
	map at: x@y put: tileSprite .