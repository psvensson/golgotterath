accessing
getTargetForDirectionString: dir
	| x y|
	x := boardpos x.
	y := boardpos y.
	((dir findString: 'up') > 0) ifTrue: [ y := y - 1].
	((dir findString: 'down') > 0) ifTrue: [ y := y + 1].
	((dir findString: 'left') > 0) ifTrue: [ x := x - 1].
	((dir findString: 'right') > 0) ifTrue: [ x := x + 1].		
	^ x@y.	