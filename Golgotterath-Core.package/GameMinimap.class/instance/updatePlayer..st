accessing
updatePlayer: pl
	player := pl.
	playerPointer ifNotNil: [ m removeMorph: playerPointer ].
	playerPointer := Morph new.
	playerPointer
		position: (self base + (player boardPosition)) * (self scale);
		height: self scale;
		width: self scale;
		color: Color red.
	m addMorph: playerPointer.
	