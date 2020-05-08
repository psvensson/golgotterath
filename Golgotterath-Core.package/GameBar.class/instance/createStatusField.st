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
	armourmorph := self getLabel: 'Armour: ' text: 'None'.
	statusRow addMorph: armourmorph.
	armour := armourmorph submorphs at: 2.
	weaponmorph := self getLabel: 'Weapon: ' text: 'None'.
	statusRow addMorph: weaponmorph.
	weapon := weaponmorph submorphs at: 2.
	acmorph := self getLabel: 'AC: ' text: '0'.
	statusRow addMorph: acmorph.
	ac := acmorph submorphs at: 2.
	hpmorph := self getLabel: 'HP: ' text: '0'.
	statusRow addMorph: hpmorph.
	hp := hpmorph submorphs at: 2.
	levelmorph := self getLabel: 'Level: ' text: '1'.
	statusRow addMorph: levelmorph.
	level := levelmorph submorphs at: 2.
	expmorph := self getLabel: 'Exp: ' text: '0'.
	statusRow addMorph: expmorph.
	exp := expmorph submorphs at: 2.
	^ statusRow