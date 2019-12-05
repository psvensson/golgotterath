accessing
getPathToTarget
	| gamemap graph |
	gamemap := entity gamemap.
	"Transcript show:'getPathToTarget';cr."
	graph := gamemap createDijkstraGraphAt: entity boardPosition radius: entity lightradius.
	^ gamemap findPathInGraph: graph from: entity boardPosition to: targetBoardPos.