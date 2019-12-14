action
wieldItemFor: entity
	self showInventoryFor: entity 
			selectWith: [ :item| 
				Logger log:item name;log:' - ';log: item kind;cr.
				(item kind = 'weapon') ]
			onSelect:[ :item |
				Logger log: 'wieldItem got selected item';cr.
				entity weapon ifNotNil: [ entity inventory add: item ].
				entity inventory remove: item.
				entity weapon: item.
				self changed ] 
			title: 'Wield Weapon'