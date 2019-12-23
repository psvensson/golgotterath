testing
from: aPoint to: bPoint do: aBlock
	(aPoint y) to: (bPoint y) do: [ :y |
		 (aPoint x) to: (bPoint x) do: [ :x |
		 		aBlock value: x@y ]]