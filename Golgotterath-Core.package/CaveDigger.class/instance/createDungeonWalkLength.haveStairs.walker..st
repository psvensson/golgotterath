generating
createDungeonWalkLength: walkLength haveStairs: haveStairs walker: argWalker
	| childWalkLength length |
	argWalker ifNil: [ walker:= CaveWalker new ] ifNotNil: [ walker := argWalker ].
	length := walkLength .
	[length > 0] whileTrue: [ | newWalker |
		length := length - 1.
		quadTree insert: (self pointRectFor: (walker walkerPosition)) data: ' '.
		walker wander.
		length \\ 80 = 0 ifTrue: [ 
			self createRoom ]. 
		length \\ 40 = 0 ifTrue: [ 
			childWalkLength := length atRandom.
			length := length - childWalkLength . 
			newWalker := walker createChild .
			childWalkLength > length ifTrue: [
				self createDungeonWalkLength: childWalkLength
						haveStairs: haveStairs
						walker: newWalker ]
			ifFalse: [ 
				self createDungeonWalkLength: childWalkLength  
						haveStairs: false
						walker: newWalker] ]].
	haveStairs ifTrue: [ self createStairsAt: walker walkerPosition	 ]	