calculating
getPathToTarget
	| gamemap graph path pos |
	pos := entity boardPosition.
	gamemap := entity gamemap.
	graph := gamemap createDijkstraGraphAt: pos 
								radius: entity lightradius.
								"Logger log:'getPathToTarget from ';log:pos;log:' radius ';
								log: entity lightradius;log:' target ';log:targetBoardPos;cr ."
	path := gamemap findPathInGraph: graph 
								from: pos 
								to: targetBoardPos.
	"path ifEmpty: [ graph inspect ]."
	^ path