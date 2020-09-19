action
dropInventoryItem: item
	(inventory includes: item)
		ifTrue: [ gamemap
				itemAt: self boardPosition
				ifAbsent: [ inventory remove: item.
					gamemap addItem: item at: self boardPosition.
					gamemap gameboard changed ] ]