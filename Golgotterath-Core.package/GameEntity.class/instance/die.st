action
die
	| goscreen |
	Logger log:self;log:' has died! ***************** ';cr.
	 
	gamemap ifNotNil: 
		[	| pos body bodypos |
			pos := self boardPosition.
			body := self createDeadEntityitem .			
			gamemap removeEntityAt: pos. 
			bodypos := pos.
			gamemap itemAt: pos ifPresent: [ pos:= (gamemap getItemFreeTileForRoom: (gamemap dungeon getRoomAt: pos)) ].
			gamemap addItem: body at: bodypos.
			gamemap gameboard playAnimation: 'die' for: self. ].
	player
		ifTrue: [ 			
			gamemap gameboard soundBoard play: 'hurt2'.
			goscreen := GameOverScreen new.
			goscreen position: gamemap gameboard position.
			gamemap gameboard addMorph: goscreen. ]
		ifFalse: [ gamemap gameboard soundBoard play: 'monster2' ]