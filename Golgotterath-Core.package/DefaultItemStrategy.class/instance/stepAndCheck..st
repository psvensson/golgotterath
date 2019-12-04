accessing
stepAndCheck: gameboard
"Look for potions, weapons and armor taht is better than what we have.
Pick up if standing on top.
If a better item is in inventory, then swap weapon/armor with that.
If inventory full, then drop an item (if any) that is inferior to what is wielded.
If hurt and have healingpotion in inventory, quaff potion."
	| finished |
	finished := false.
	
	^ finished 