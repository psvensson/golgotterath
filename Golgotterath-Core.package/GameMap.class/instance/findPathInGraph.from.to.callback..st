path
findPathInGraph: graph from: pos1 to: pos2 callback: callback
	"Logger log:'-- calling Easystar to get path..';cr."
	graph
		findPathFrom: pos1 x + 1 @ (pos1 y + 1)
		to: pos2 x + 1 @ (pos2 y + 1)
		onPathFound: [ :path | "Logger log:'-- callback for path found';cr." 
			path ifNotNil: [  callback value: (path collect: [ :el | el x - 1 @ (el y - 1) ]) ]].
	graph calculate