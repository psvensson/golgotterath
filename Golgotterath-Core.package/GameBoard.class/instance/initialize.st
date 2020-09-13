initialization
initialize
	super initialize.
	Logger log: 'Golgotterath initialization starting';cr.
	"self bounds: (0 @ 0 corner: 1050 @ 600)."
	"self showLoadingMessage."	
	steppingTime := 90.
	currentLevel := 1.
	openingDoor := false.
	fireWeapon := false.
	runningAnimations := Set new.
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	levels := Dictionary new.
	helpWindow := self initializeHelpWindow.
	