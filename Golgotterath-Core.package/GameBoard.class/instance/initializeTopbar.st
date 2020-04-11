initialization - private
initializeTopbar
	topbar := GameBar new.
	topbar bounds: (0 @ 0 corner: 1050 @ 35).
	self addMorph: topbar.
	topbar text: 'Loading...'