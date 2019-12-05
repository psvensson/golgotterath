initialization
initialize 
	abilities := Dictionary new
		at: 'str' put: 10;
		at: 'con' put: 10;
		at: 'dex' put: 10;
		at: 'int' put: 10;
		at: 'wis' put: 10;
		yourself .
	hp := 10.
	ac := 10.
	speed := 1.
	level := 1.
	exp := 0.
	player := false.
	lightradius := 3.
	stepCalls := 1.
	animatedSprite := Human new.
	strategies := SortedCollection sortBlock: [ :a :b | a priority < b priority  ].
	