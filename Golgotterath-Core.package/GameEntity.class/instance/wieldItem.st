action
wieldItem
	gamemap gameboard
		showInventoryFor: self
		selectWith: [ :item | 
			Logger
				log: item name;
				log: ' - ';
				log: item kind;
				cr.
			item kind = 'weapon' ]
		onSelect: [ :item | 
			Logger
				log: 'wieldItem got selected item';
				cr.
			weapon ifNotNil: [ inventory add: item ].
			inventory remove: item.
			inventory add: self weapon.
			self weapon: item.
			gamemap gameboard changed ]
		title: 'Wield Weapon'.
	self actionHappened.
	gamemap gameboard updateTopbar 