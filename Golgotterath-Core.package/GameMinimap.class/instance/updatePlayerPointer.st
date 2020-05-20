accessing
updatePlayerPointer
	playerPointer
		position:  self base + (player boardPosition * self scale);
		height: scale*2;
		width: scale*2;
		changed.
	self changed