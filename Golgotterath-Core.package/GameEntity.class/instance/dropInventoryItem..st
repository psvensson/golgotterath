action
dropInventoryItem: item
	"Get an item from the floor (if present) and att to inventory (if possible)"

	(inventory includes: item)
		ifTrue: [ gamemap
				itemAt: boardPosition
				ifAbsent: [ inventory remove: item.
					gamemap addItem: item at: boardPosition.
					gamemap gameboard changed ] ]