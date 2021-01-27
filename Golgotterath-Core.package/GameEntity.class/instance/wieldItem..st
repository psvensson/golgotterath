action
wieldItem: item

	weapon ifNotNil: [ inventory add: weapon ].
	inventory remove: item.
	self weapon: item.
	gamemap gameboard changed.
	gamemap gameboard updateTopbar