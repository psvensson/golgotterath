accessing
handleEffectOn: holder
	| howmany healing newhp effect |
	healing := 0.
	(name findString: 'healing_potion') > 0 ifTrue: [ 
		howmany := attributes at: 'size'.
		howmany timesRepeat: [ healing := healing + 6 atRandom ] ].
	newhp := holder hp + healing.
	holder hp < newhp ifFalse: [ ^ self ].
	holder hp: newhp.
	effect := TextEffect new.
	effect color: Color green.
	effect text: '+' , healing asString.
	holder gamemap gameboard
		addEffect: effect
		startPosition:
			(holder animatedSprite calculatePositionFromGameboard:
				 holder gamemap gameboard)