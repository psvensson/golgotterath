accessing
plotPointAt: pos color: c	
	| p |
	p := Morph new.
	p
		position: pos * (self scale);
		height: self scale;
		width: self scale;
		color: c.
	m addMorph: p.
	