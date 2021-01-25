initialization
visiblePositionsInOrder: aBlock

	minY to: maxY do: [ :y | 
		minX to: maxX do: [ :x | 
		visibleTiles at: x @ y ifPresent: [ aBlock value: x @ y ] ] ]