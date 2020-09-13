accessing
getEntity: pos gamemap: gamemap then: aBlock
	| entity |
	entity := gamemap entityAt: pos ifAbsent: [  ].
	aBlock value: entity