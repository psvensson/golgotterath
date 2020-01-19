calculating
getPathToTarget: aBlock
	| gamemap graph pos |
	pos := entity boardPosition.
	gamemap := entity gamemap.
	graph := gamemap createDijkstraGraphAt: pos 
								radius: entity lightradius.
								"Logger log:'getPathToTarget from ';log:pos;log:' radius ';
								log: entity lightradius;log:' target ';log:targetBoardPos;cr ."
	gamemap findPathInGraph: graph 
								from: pos 
								to: targetBoardPos callback: aBlock .
	"path ifEmpty: [ graph inspect ]."
	