accessing
onLevelChanged
	Transcript
		show: '+++++++++++++++++++++++++++++++ onLevelChaged called';
		cr.
	minimap ifNotNil: [self removeMorph: minimap ].
	self updateMinimap 