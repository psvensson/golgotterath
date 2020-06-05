action
quaffItem
	gamemap gameboard showInventoryFor: self 
			selectWith: [ :item| 
				Logger log:item name;log:' - ';log: item kind;cr.
				(item kind = 'potion') ]
			onSelect:[ :item |
				Logger log: 'quaffItem got selected item';cr.
				inventory remove: item.
				item handleEffectOn: self.
				gamemap gameboard changed ] 
			title: 'Wield Weapon'.
	self actionHappened		