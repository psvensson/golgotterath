accessing
onLevelChanged
	Transcript
		show: '+++++++++++++++++++++++++++++++ onLevelChaged called';
		cr.
	minimap
		ifNotNil: [ minimap
				gamemap: gameMap;
				generateMap
			"position: self position;"
			"computeFullBounds;" ].
	self updateMinimap