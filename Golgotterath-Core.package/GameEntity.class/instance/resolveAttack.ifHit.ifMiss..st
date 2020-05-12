accessing
resolveAttack: entity ifHit: hitBlock ifMiss: missBlock
	| tohit roll |
	tohit := 11.
	self weapon ifNotNil: [ 
		tohit := tohit - (self weapon attributes at: 'tohit') asNumber ].	
	tohit := tohit + (10 - (entity ac)).
	roll := 20 atRandom.
	Logger log: 'resolveAttack: ';log:self;log:' needed ';log:tohit;
				log: ' to hit ';log: entity;log:' got ';log:roll;cr.
	roll > tohit ifTrue: hitBlock ifFalse: missBlock .