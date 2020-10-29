initialization
addDungeonStairsFromRooms: rooms

	| downpos startpos |
	downpos := self getFreeTileForRoom: rooms last.
	startpos := self getFreeTileForRoom: rooms first.
	actualrooms first entities: OrderedCollection new.
	level > 1 ifTrue: [ 
		startpos ifNotNil: [ 
			self addFeature: StairsUp new At: startpos + (0 @ 1) ] ].
	downpos ifNotNil: [ self addFeature: StairsDown new At: downpos ].
	upstairsPos := startpos.
	downstairsPos := downpos