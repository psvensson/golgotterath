accessing
armortiles
	armortiles isNil ifTrue: [ 
		armortiles := ArmorTiles new.
	].
	^ armortiles