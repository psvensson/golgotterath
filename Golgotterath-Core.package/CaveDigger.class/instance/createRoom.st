generating
createRoom
	| startx starty endx endy |
	startx := (walker walkerPosition x) - self maxSide atRandom.
	starty := (walker walkerPosition y) - self maxSide atRandom.
	endx := (walker walkerPosition x) + self maxSide atRandom.
	endy := (walker walkerPosition y) + self maxSide atRandom.
	left := left min: startx.
	right := right max: endx.
	top := top min: starty.
	bottom := bottom max: endy.
	Logger log: 'createRoom at ';log:startx@starty;log:' to ';log:endx@endy;
				log:' left top: ';log:left@top;log:' bottom right: ';log: right@bottom;cr.
	self createRoomFrom: startx@starty to: endx@endy