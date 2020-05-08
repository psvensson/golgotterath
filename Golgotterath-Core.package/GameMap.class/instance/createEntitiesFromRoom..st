initialization
createEntitiesFromRoom: room
	room entities
		do: [ :entity | 
			| name |
			name := entity at: #name.
			Logger
				log: 'Creating entity ' , name;
				cr.
			self
				addEntity: (GameEntity new: name)
				at: (self getUnoccupiedTileForRoom: room) ]