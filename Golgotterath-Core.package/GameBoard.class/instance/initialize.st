initialization
initialize
	super initialize.
	Logger log: 'Golgotterath initialization starting';cr.
	"self bounds: (0 @ 0 corner: 1050 @ 600)."
	"self showLoadingMessage."	
	steppingTime := 1000.
	openingDoor := false.
	runningAnimations := Set new.
	effects := OrderedCollection new.
	boardDrawOffset := 0 @ 0.
	