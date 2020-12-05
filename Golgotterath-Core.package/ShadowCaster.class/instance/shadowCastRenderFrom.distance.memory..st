drawing
shadowCastRenderFrom: pos distance: distance memory: memory

	"Each row has lenght of center (1) + distance * 2 (growing out distance to each side)
	When a wall is found, add its position to the memory. Skip any rendering of position which intersect previous memory rows or cols. This is the actual shadow, n.b."

	| sides seenPositions |
	seenPositions := OrderedCollection new.
	sides := self class shadowCastSides.
	"TODO: Each side needs its own memory, otherwise goordinats will be mixed"
	sides do: [ :side | 
		| sidepos tile sideMemory |
		"Transcript
			show: 'shadowCastRenderForm -------------------- ' , (side at: #name);
			cr."
		sideMemory := memory at: (side at: #name).
		sidepos := self class
			           shadowCastCenterFrom: pos
			           side: side
			           distance: distance.

		tile := gamemap mapAt: sidepos.
		(self shadowCastIsInMemory: sideMemory tile: tile forSide: side) 
			ifFalse: [ seenPositions add: sidepos ].
		seenPositions addAll: (self
				 shadowCastLine: pos
				 side: side
				 distance: distance
				 memory: sideMemory) ].
	^ seenPositions