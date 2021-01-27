action
equipItem: item

	gamemap gameboard soundBoard play: 'equip'.
	armour ifNotNil: [ 
		inventory add: armour.
		ac := ac - (armour attributes at: #dac) ].
	inventory remove: item.
	self armour: item.
	ac := ac + (armour attributes at: #dac).
	self changed.
	gamemap gameboard updateTopbar