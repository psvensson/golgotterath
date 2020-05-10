accessing
handleEffectOn: holder
	| howmany healing newhp |
	healing := 0.
	(name findString: 'healing_potion') > 0 ifTrue: [ 
		howmany := attributes at: 'size'.
		howmany timesRepeat: [ healing := (healing + 6) atRandom ] ].
	newhp := holder hp + healing.
	holder hp < newhp ifFalse: [ ^ self ].
	holder hp: newhp.
	holder healingEffect: healing