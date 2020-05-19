accessing
plotPointAt: pos color: c	
	| p |
	p := Morph new.
	p
		position: (self base + pos) * (self scale);
		height: self scale;
		width: self scale;
		color: c.
	self addMorph: p.
	^ p
	