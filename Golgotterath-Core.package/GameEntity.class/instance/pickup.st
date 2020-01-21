action
pickup
	"Get an item from the floor (if present) and att to inventory (if possible)"
	gamemap itemAt: self boardPosition ifPresent: [ :item |
		Logger log: self name;log: ' picked up ';log: item;cr.
		gamemap gameboard soundBoard play: 'misc2'.
		inventory size = inventorySize ifFalse: [ 
			gamemap removeItemAt: self boardPosition.
			inventory add: item.
			gamemap gameboard addEffectForEntity: self text: 'Picked up ',(item longname).
			gamemap gameboard changed ] ]