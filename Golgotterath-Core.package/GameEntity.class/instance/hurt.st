action
hurt
	gamemap gameboard playAnimation: 'hurt' for: self.
	player
		ifTrue: [ gamemap gameboard soundBoard play: 'hurt1' ]
		ifFalse: [ gamemap gameboard soundBoard play: 'monster1' ]