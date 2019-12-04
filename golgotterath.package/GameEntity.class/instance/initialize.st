initialization
initialize 
	|  |
	abilities := Dictionary new.
	abilities at: 'str' put: 10.
	abilities at: 'con' put: 10.
	abilities at: 'dex' put: 10.
	abilities at: 'int' put: 10.
	abilities at: 'wis' put: 10.
	hp := 10.
	ac := 10.
	speed := 1.
	level := 1.
	exp := 0.
	player := false.
	lightradius := 3.
	stepCalls := 0.
	animatedSprite := Human new.
	strategies := SortedCollection sortBlock: [ :a :b | a priority < b priority  ].
	