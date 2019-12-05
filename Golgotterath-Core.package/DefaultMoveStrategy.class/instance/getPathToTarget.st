calculating
getPathToTarget
	| gamemap graph |
	gamemap := entity gamemap.
	graph := gamemap createDijkstraGraphAt: entity boardPosition radius: entity lightradius.
	^ gamemap findPathInGraph: graph from: entity boardPosition to: targetBoardPos.