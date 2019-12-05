accessing
addTile: tileSprite atx: x y: y
	"Transcript show: 'adding tile ',x asString,',',y asString ;cr."
	tileSprite boardPosition: x@y.
	map at: x@y put: tileSprite .