accessing
stepAndCheck: gameboard
"Look for tiles that can be useful. If adjacent to healing well and hurt, activate
healing well."
	| finished |
	finished := false.
	
	^ finished 