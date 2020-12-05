drawing
shadowCastLine: pos side: side distance: distance memory: memory

	"Walk distance steps along side in both direction from centerpos"

	| seenPositions horizontalPos |
	"Transcript show:'---------------------------- ',(side at: #name);cr."
	seenPositions := OrderedCollection new.
	1 to: distance do: [ :i | 
		horizontalPos := self getHorizontalPosFor: pos side: side.
		(self getLeftAndRightFor: side horizontalPos: horizontalPos index: i) 
			do: [ :adjust | 
				| sidepos tile |
				sidepos := self
					           getSidePosFrom: pos
					           side: side
					           distance: distance
					           adjust: adjust.
				tile := gamemap mapAt: sidepos.

				(self shadowCastIsInMemory: memory tile: tile forSide: side) 
					ifFalse: [ seenPositions add: sidepos ] ] ].
	^ seenPositions