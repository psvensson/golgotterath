initialization
createDefaultItems
	^ [ topbar
		text: 'Creating items...';
		left: 100.
	dungeon rooms
		do: [ :room | 
			room items
				do: [ :item | 
					| name |
					name := item at: #name.
					Logger
						log: 'Creating item ' , name;
						cr.
					self
						addItem: (GameItem new: name)
						at: (self getFreeTileForRoom: room) ] ] ] future