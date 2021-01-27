action
quaffItem
	gamemap gameboard showInventoryFor: self 
			selectWith: [ :item| 
				
				(item kind = 'potion') ]
			onSelect:[ :item |
				self quaffItem: item  ] 
			title: 'Quaff Potion'.
	self actionHappened	.
			