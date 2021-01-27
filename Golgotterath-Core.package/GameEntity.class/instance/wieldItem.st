action
wieldItem

	gamemap gameboard
		showInventoryFor: self
		selectWith: [ :item | 
			item kind = 'weapon' and:
				(item attributes at: #subtype) ~= 'ranged_ammo' ]
		onSelect: [ :item | self wieldItem: item ]
		title: 'Wield Weapon'.
	self actionHappened