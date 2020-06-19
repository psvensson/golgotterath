initialization
createStatusField
	| statusRow acmorph armourmorph weaponmorph hpmorph levelmorph expmorph |
	statusRow := Morph new.
	statusRow
		layoutPolicy: RowLayout new;
		listDirection: #rightToLeft;
		"wrapCentering: #topLeft;"
			cellPositioning: #bottomLeft;
		layoutInset: 5.
	armourmorph := self class getLabel: 'Armour: ' text: 'None'.
	statusRow addMorph: armourmorph.
	armour := armourmorph submorphs at: 2.
	weaponmorph := self class getLabel: 'Weapon: ' text: 'None'.
	statusRow addMorph: weaponmorph.
	weapon := weaponmorph submorphs at: 2.
	acmorph := self class getLabel: 'AC: ' text: '0'.
	statusRow addMorph: acmorph.
	ac := acmorph submorphs at: 2.
	hpmorph := self class getLabel: 'HP: ' text: '0'.
	statusRow addMorph: hpmorph.
	hp := hpmorph submorphs at: 2.
	levelmorph := self class getLabel: 'Level: ' text: '1'.
	statusRow addMorph: levelmorph.
	level := levelmorph submorphs at: 2.
	expmorph := self class getLabel: 'Exp: ' text: '0'.
	statusRow addMorph: expmorph.
	exp := expmorph submorphs at: 2.
	^ statusRow