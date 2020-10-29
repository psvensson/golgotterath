action
dropItem
	| pos |
	gamemap gameboard
		showInventoryFor: self
		onSelect: [ :item | 
			pos := gamemap getItemFreeTileForPos: self boardPosition .
			gamemap
				itemAt: self boardPosition
				ifAbsent: [ Logger
						log: self name;
						log: ' ----dropped ';
						log: item;
						cr.
					gamemap gameboard soundBoard play: 'misc1'.
					inventory remove: item.
					gamemap gameboard
						addEffectForEntity: self
						text: 'Dropped ' , item longname boardPosition: self boardPosition.
					gamemap addItem: item at: pos.
					gamemap gameboard
						render;
						showWhatIsOnFloor: self boardPosition ] ].
	gamemap gameboard updateTopbar