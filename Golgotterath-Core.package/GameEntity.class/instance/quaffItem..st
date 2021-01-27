action
quaffItem: item

	Logger
		log: 'quaffItem got selected item';
		cr.
	inventory remove: item.
	item handleEffectOnHolder: self.
	gamemap gameboard changed.
	gamemap gameboard updateTopbar