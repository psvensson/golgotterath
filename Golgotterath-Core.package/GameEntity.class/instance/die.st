accessing
die
	Logger log:self;log:' has died! (slightly unimplemented)';cr.
	gamemap gameboard playAnimation: 'die' for: self.
	player
		ifTrue: [ gamemap gameboard soundBoard play: 'hurt2' ]
		ifFalse: [ gamemap gameboard soundBoard play: 'monster2' ]