calculating
getPathToTarget
	| gamemap graph path |
	gamemap := entity gamemap.
	graph := gamemap createDijkstraGraphAt: entity boardPosition radius: entity lightradius.
	path := gamemap findPathInGraph: graph from: entity boardPosition to: targetBoardPos.
	"path ifEmpty: [ graph inspect ]."
	^ path