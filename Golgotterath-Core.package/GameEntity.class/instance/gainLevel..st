accessing
gainLevel: l
	level := l.
	maxhp := maxhp + 1 + (6 atRandom ).
	hp := maxhp.
	self levelUpEffect. 