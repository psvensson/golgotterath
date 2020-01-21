calculating
getPathToTarget: aBlock
	| gamemap graph pos |
	pos := entity boardPosition.
	gamemap := entity gamemap.
	graph := gamemap
		         createDijkstraGraphAt: pos
		         radius: entity lightradius.
	Logger log: 'getPathToTarget from ';	log: pos;	log: ' radius ';log: entity lightradius;log:' target ';
		log: targetBoardPos;
		cr.
	gamemap
		findPathInGraph: graph
		from: pos
		to: targetBoardPos
		callback: [ :path | 
			| fullpath |
			fullpath := Array with: targetBoardPos withAll: path.
			fullpath := fullpath reject: [ :el | el = entity boardPosition ].
			aBlock value: fullpath ]
	"path ifEmpty: [ graph inspect ]."