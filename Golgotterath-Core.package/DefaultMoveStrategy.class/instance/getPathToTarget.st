accessing
getPathToTarget
	| gamemap graph |
	gamemap := entity gamemap.
	"Transcript show:'getPathToTarget';cr."
	graph := gamemap createDijkstraGraphAt: entity boardpos radius: entity lightradius.
	^ gamemap findPathInGraph: graph from: entity boardpos to: targetBoardPos.