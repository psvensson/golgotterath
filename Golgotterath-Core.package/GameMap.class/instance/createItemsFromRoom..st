initialization
createItemsFromRoom: room
	room items
		do: [ :item | 
			| name rpos it |
			name := item at: #name.			
			rpos := self getFreeTileForRoom: room.
			Logger
				log: 'Creating item ' , name, ' at ',rpos asString;
				cr.
			it := GameItem new: name.
			self addItem: it at: rpos ]