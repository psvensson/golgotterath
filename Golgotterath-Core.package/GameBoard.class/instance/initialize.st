initialization
initialize
	super initialize.
	self initializeWorld.
	Logger
		log: 'Golgotterath initialization starting';
		cr.
	"self bounds: (0 @ 0 corner: 1050 @ 600)."
	"self showLoadingMessage."
	steppingTime := 30.
	currentLevel := 1.
	openingDoor := false.
	fireWeapon := false.
	events := Set new.
	runningAnimations := Set new.
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	levels := Dictionary new.
	helpWindow := self initializeHelpWindow.
	arrows := ArrowTiles new.
	oldMorphs := OrderedCollection new.
	inventoryPanel := GameListPanel new.
	playerIsMoving := false.
	