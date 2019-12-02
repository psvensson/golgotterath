accessing
getPathToTarget
	| gamemap |
	gamemap := entity gamemap.	
	^ gamemap findPathFrom: entity boardpos to: targetBoardPos.