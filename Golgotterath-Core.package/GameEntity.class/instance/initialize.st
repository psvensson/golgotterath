initialization
initialize
	self initializeAbilities.
	hp := 10.
	ac := 10.
	speed := 1.
	level := 1.
	exp := 0.
	player := false.
	lightradius := 3.
	stepCalls := 0.
	inventory := OrderedCollection new.
	inventorySize := 10.
	strategies := SortedCollection
		sortBlock: [ :a :b | a priority < b priority ]