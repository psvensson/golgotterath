accessing
overlaps: pos boardPosition: boardPosition
	((boardPosition y - 1)= pos y )
		ifFalse: [ ^ false ]
		ifTrue: [ ^ (((boardPosition x - 1) = pos x) or: (boardPosition x = pos x)) ]