testing
isFloor: tile
	(tile name findString: 'door') > 0
		ifTrue: [ ^ tile isOpen ].
	^ (tile name findString: 'floor') > 0