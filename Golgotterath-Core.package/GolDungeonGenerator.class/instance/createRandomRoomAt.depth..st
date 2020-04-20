accessing
createRandomRoomAt: door depth: depth
	|  h w partial direction pos area |
	partial := MAX_SIZE - MIN_SIZE.
	h := partial atRandom + MIN_SIZE.
	w := partial atRandom + MIN_SIZE.
	direction := door at: #direction.
	pos := door at: #pos.
	area := self
		createAreaForPos: pos
		h: h
		w: w
		direction: direction.
	(self isAreaFree: area)
		ifFalse: [ ^ self ].
	self createRoomAt: area depth: depth