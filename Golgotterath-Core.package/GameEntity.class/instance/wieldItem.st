action
wieldItem

	gamemap gameboard
		showInventoryFor: self
		selectWith: [ :item | item kind = 'weapon' ]
		onSelect: [ :item | 
			weapon ifNotNil: [ inventory add: weapon ].
			inventory remove: item.
			self weapon: item.
			gamemap gameboard changed.
			gamemap gameboard updateTopbar ]
		title: 'Wield Weapon'.
	self actionHappened