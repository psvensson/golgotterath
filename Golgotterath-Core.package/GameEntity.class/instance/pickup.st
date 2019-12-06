action
pickup
	"Get an item from the floor (if present) and att to inventory (if possible)"
	| item |
	item := gamemap itemAt: boardPosition.
	item ifNotNil: [ 
		inventory size = inventorySize ifFalse: [ 
			gamemap removeItemAt: boardPosition.
			inventory add: item.
			gamemap gameboard changed ] ]