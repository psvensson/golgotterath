accessing
getRoomsWithDepth: depth
	^ rooms select: [ :room | room depth = depth ]