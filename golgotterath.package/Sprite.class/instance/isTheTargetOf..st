accesing
isTheTargetOf: anotherSprite
	| isMoving tx ty |
	isMoving := false.
	tx := anotherSprite target x.
	ty := anotherSprite target y.
	(((anotherSprite isKindOf: AnimatedSprite) and: 
		(anotherSprite  isMoving)) and: 
		(ty isNotNil) ) ifTrue: [	
			| foo bar |
			foo := (self boardpos y) + 1.
			bar := (self boardpos x) + 1.
			isMoving :=( ty = foo) and: (tx = bar).
		"Transcript show: 'isMovingTowards for AnimatedSprite target=',tx asString,',',ty asString,' sprite board=',(self boardx asString),',',(self boardy asString),' isMoving=',isMoving asString;cr."
		].
	^ isMoving