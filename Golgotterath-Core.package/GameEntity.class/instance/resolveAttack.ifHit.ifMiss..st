accessing
resolveAttack: entity ifHit: hitBlock ifMiss: missBlock
	| tohit roll |
	tohit := 11.
	self weapon ifNotNil: [ 
		tohit := tohit + (self weapon attributes at: 'tohit') asNumber ].
	entity armour ifNotNil: [  
		tohit := tohit + (entity armour attributes at: 'dac') asNumber].
	roll := 20 atRandom.
	Logger log: 'resolveAttack: ';log:self;log:' needed ';log:tohit;
				log: ' to hit ';log: entity;log:' got ';log:roll;cr.
	roll > tohit ifTrue: hitBlock ifFalse: missBlock .