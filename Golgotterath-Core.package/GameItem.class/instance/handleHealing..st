accessing
handleHealing: holder
	| howmany newhp healing |
	healing := 0.
	howmany := attributes at: 'size'.
	howmany timesRepeat: [ healing := (healing + 6) atRandom ].
	newhp := holder hp + healing.
	holder hp < newhp
		ifFalse: [ ^ self ].
	holder hp: newhp.
	holder healingEffect: healing