accessing
isNextTo: entity
	| healing newhp |
	entity hp < entity maxhp
		ifFalse: [ ^ self ].
	healing := 6 atRandom.
	newhp := entity hp + healing.
	entity hp < newhp
		ifFalse: [ ^ self ].
	newhp > entity maxhp
		ifTrue: [ newhp := entity maxhp ].
	entity hp: newhp.
	entity healingEffect: healing