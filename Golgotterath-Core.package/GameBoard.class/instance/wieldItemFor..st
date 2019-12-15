action
wieldItemFor: entity
	self showInventoryFor: entity 
			selectWith: [ :item| item kind = 'weapon' ]
			onSelect:[ :item |
				Logger log: 'wieldItem got selected item';cr.
				entity weapon ifNotNil: [ entity inventory add: item ].
				entity inventory remove: item.
				entity weapon: item.
				self changed ] 
			title: 'Wield Weapon'