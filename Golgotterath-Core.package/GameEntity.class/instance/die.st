action
die
	Logger
		log: self name;
		log: ' has died! ***************** ';
		cr.
	gamemap
		ifNotNil: [ | pos body bodypos |
			pos := self boardPosition.
			body := self createDeadEntityitem.
			gamemap removeEntityAt: pos.
			bodypos := pos.
			gamemap
				itemAt: pos
				ifPresent: [ pos := gamemap
						getItemFreeTileForRoom: (gamemap dungeon getRoomAt: pos) ].
			gamemap addItem: body at: bodypos.
			self inventory do: [ :item |  | p |
				p := gamemap getItemFreeTileForPos: self boardPosition.
				gamemap addItem: item at: p].
			gamemap gameboard playAnimation: 'die' for: self.
			Logger
				log: 'entity emptied and removed';
				cr ].
	player
		ifTrue: [ gamemap gameboard soundBoard play: 'hurt2' ]
		ifFalse: [ gamemap gameboard soundBoard play: 'monster2' ].
	gamemap gameboard updateTopbar 	