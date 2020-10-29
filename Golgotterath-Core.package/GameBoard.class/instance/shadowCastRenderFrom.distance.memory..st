drawing
shadowCastRenderFrom: pos distance: distance memory: memory

	"Each row has lenght of center 81) + distance * 2 (growing out distance to each side)"
	"When a wall is found, add its position to the memory. Skip and rendering of position which intersect previous memory rows or cols"
	