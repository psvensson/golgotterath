action
die
	Logger
		log: self;
		log: ' has died! ***************** player = ' , player asString;
		cr.
	gamemap
		ifNotNil: [ | pos body bodypos |
			pos := self animatedSprite boardPosition.
			body := self createDeadEntityitem.
			gamemap removeEntityAt: pos.
			bodypos := pos.
			gamemap
				itemAt: pos
				ifPresent: [ pos := gamemap
						getItemFreeTileForRoom: (gamemap dungeon getRoomAt: pos) ].
			gamemap addItem: body at: bodypos.
			gamemap gameboard playAnimation: 'die' for: self.
			Logger
				log: 'entity emptied and removed';
				cr ].
	player
		ifTrue: [ gamemap gameboard soundBoard play: 'hurt2' ]
		ifFalse: [ gamemap gameboard soundBoard play: 'monster2' ]