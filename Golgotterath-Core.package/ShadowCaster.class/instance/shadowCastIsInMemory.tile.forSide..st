drawing
shadowCastIsInMemory: memory tile: tile forSide: side

	| horizontalAxis memoryPos position rv |
	rv := false.
	position := tile boardPosition.
	horizontalAxis := side at: #horizontal.
	memoryPos := horizontalAxis asString
	             , (position perform: horizontalAxis asSymbol) asString.

	memory at: memoryPos ifPresent: [ 
		"Transcript
			show: '---> skipping tile ' , tile name , ' at ' , memoryPos
				, ' due to shadow memory';
			cr."
		rv := true ].
	tile isWall ifTrue: [ 
		Transcript
			show:
				'=== adding memory for position ',position asString,' tile ' , tile name , ' at ' , memoryPos;
			cr.
		memory at: memoryPos put: true ].
	^ rv