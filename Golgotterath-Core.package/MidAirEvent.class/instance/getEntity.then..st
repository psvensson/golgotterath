accessing
getEntity: pos then: aBlock
	| entity |
	entity := gamemap entityAt: pos ifAbsent: [  ].
	aBlock value: entity