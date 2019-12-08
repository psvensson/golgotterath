action
pickup
	"Get an item from the floor (if present) and att to inventory (if possible)"
	gamemap itemAt: boardPosition ifPresent: [ :item |
		Logger log: self name;log: ' picked up ';log: item;cr.
		inventory size = inventorySize ifFalse: [ 
			gamemap removeItemAt: boardPosition.
			inventory add: item.
			gamemap gameboard changed ] ]