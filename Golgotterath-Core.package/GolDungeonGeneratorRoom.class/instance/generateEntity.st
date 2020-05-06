accessing
generateEntity
	| things list |
	list := GameEntity listEntities  .
	things := list values select: [ :thing | (thing at: #level) < (level +1) ].
	^ things at: things size atRandom