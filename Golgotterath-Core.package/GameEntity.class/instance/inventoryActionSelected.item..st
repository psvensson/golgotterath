accessing
inventoryActionSelected: action item: item
	action = 'Drop' ifTrue: [ self dropItem: item ].
	action = 'Wield' ifTrue: [ self wieldItem: item ].
	action = 'Equip' ifTrue: [ self equipItem: item ].
	action = 'Quaff' ifTrue: [ self quaffItem: item ].