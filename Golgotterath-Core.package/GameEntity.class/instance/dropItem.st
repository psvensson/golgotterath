action
dropItem
	gamemap gameboard showInventoryFor: self onSelect:[ :item |
		gamemap itemAt: (self boardPosition) ifAbsent: [ 
			Logger log: self name;log: ' dropped ';log: item;cr.
			gamemap gameboard soundBoard play: 'misc1'.
			inventory remove: item.
			gamemap gameboard addEffectForEntity: self text: 'Dropped ',(item longname).
			gamemap addItem: item at: (self boardPosition). ] .
			gamemap itemAt: (self boardPosition) ifPresent: [ 
			Logger log: self name;log: ' could not drop ';log: item;log: ' because there was already something on the floor';cr]]