drawing
shadowCastRenderFrom: pos distance: distance memory: memory

	"Each row has lenght of center (1) + distance * 2 (growing out distance to each side)"
	"When a wall is found, add its position to the memory. Skip any rendering of position which intersect previous memory rows or cols. This is the actual shadow, n.b."
	
	| sides |
	sides := self class shadowCastSides.