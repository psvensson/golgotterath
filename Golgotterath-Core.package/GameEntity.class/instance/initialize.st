initialization
initialize 
	self initializeAbilities.
	hp := 10. 
	ac := 10.
	speed := 1.
	level := 1.
	exp := 0.
	weapon := nil.
	armour := nil.
	player := false.
	lightradius := 3.
	stepCalls := 0.
	effects := OrderedCollection new.
	inventory := OrderedCollection new.
	inventorySize := 10.
	animatedSprite := Human new.
	strategies := SortedCollection sortBlock: [ :a :b | a priority < b priority  ].
	