initialization
createFeaturesFromRoom: room
	| pos |
	room features
		do: [ :feature | 
			| name |
			name := feature name.
			Logger
				log: 'Creating feature ' , name;
				cr.
			pos := self getFreeTileForRoom: room.
			pos ifNotNil: [ self addFeature: feature At: pos ] ]