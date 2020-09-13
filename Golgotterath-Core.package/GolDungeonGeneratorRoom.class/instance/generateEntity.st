accessing
generateEntity
	| things list entity|
	list := GameEntity listEntities  .
	things := list values select: [ :thing | (thing at: #level) < (level +1) ].
	entity := things at: things size atRandom.
	Transcript show:'generting entity:  ',(entity at: #name);cr.
	^ entity