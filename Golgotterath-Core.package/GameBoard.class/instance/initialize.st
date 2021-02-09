initialization
initialize
	super initialize.
	self initializeWorld.
	Logger
		log: 'Golgotterath initialization starting';
		cr.
	"self bounds: (0 @ 0 corner: 1050 @ 600)."
	"self showLoadingMessage."
	stepTime := 45.
	currentLevel := 1.
	paintMarkers := 0.
	openingDoor := false.
	fireWeapon := false.
	inventoryShown := true.
	events := Set new.
	runningAnimations := Set new.
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	levels := Dictionary new.
	helpWindow := self initializeHelpWindow.
	arrows := ArrowTiles new.
	inventoryPanel := GameListPanel new.
	tesselation := 64.
	scaleFactor := 1.0