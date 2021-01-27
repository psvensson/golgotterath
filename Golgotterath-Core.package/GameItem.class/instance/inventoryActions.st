accessing
inventoryActions

	(kind = 'weapon' and: (attributes at: #subtype) ~= 'ranged_ammo') 
		ifTrue: [ ^ { 'Drop'. 'Wield' } ].
	kind = 'armour' ifTrue: [ ^ { 'Drop'. 'Equip' } ].
	kind = 'potion' ifTrue: [ ^ { 'Drop'. 'Quaff' } ].
	^ { 'Drop' }