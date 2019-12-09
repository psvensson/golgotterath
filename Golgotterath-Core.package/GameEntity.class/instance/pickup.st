action
pickup
	"Get an item from the floor (if present) and att to inventory (if possible)"
	gamemap itemAt: self boardPosition ifPresent: [ :item |
		Logger log: self name;log: ' picked up ';log: item;cr.
		inventory size = inventorySize ifFalse: [ 
			gamemap removeItemAt: self boardPosition.
			inventory add: item.
			gamemap gameboard changed ] ]