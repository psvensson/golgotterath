initialization
addDungeonStairsFromRooms: actualrooms
	| downpos startpos |
	downpos := self getFreeTileForRoom: actualrooms first.
	startpos := self getFreeTileForRoom: actualrooms first.
	actualrooms first entities: OrderedCollection new.
	level > 1
		ifTrue: [ startpos
				ifNotNil: [ self addFeature: StairsUp new At: startpos + (0 @ 1). ] ].
	downpos ifNotNil: [ self addFeature: StairsDown new At: startpos ].
	upstairsPos := startpos.
	downstairsPos := downpos.