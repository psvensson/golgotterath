accesing
isTheTargetOf: anotherSprite
	| isMoving tx ty |
	isMoving := false.
	tx := anotherSprite targetx.
	ty := anotherSprite targety.
	(((anotherSprite isKindOf: AnimatedSprite) and: 
		(anotherSprite  isMoving)) and: 
		(ty isNotNil) ) ifTrue: [	
			| foo bar |
			foo := (self boardy) + 1.
			bar := (self boardx) + 1.
			isMoving :=( ty = foo) and: (tx = bar).
		"Transcript show: 'isMovingTowards for AnimatedSprite target=',tx asString,',',ty asString,' sprite board=',(self boardx asString),',',(self boardy asString),' isMoving=',isMoving asString;cr."
		].
	^ isMoving