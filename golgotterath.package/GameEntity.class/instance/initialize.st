accessing
initialize 
	abilities := Dictionary new.
	abilities at: 'str' put: 10.
	abilities at: 'con' put: 10.
	abilities at: 'dex' put: 10.
	abilities at: 'int' put: 10.
	abilities at: 'wis' put: 10.
	hp := 10.
	ac := 10.
	speed := 1.
	animatedSprite := Human new.