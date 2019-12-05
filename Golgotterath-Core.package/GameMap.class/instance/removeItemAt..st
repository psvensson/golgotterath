accessing
removeItemAt: pos
	self itemAt: pos ifPresent: [ :item |
		items removeKey: pos.
	 ]