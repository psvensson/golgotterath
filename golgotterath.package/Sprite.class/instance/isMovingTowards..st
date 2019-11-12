accesing
isMovingTowards: anotherSprite
	| isMoving |
	isMoving := false.
	(((self isKindOf: AnimatedSprite) and: (self isMoving)) and: (self targety isNotNil) ) ifTrue: [	
			| foo |
			foo := (anotherSprite boardy) + 1.
			isMoving :=( self targety = foo) .
		Transcript show: 'isMovingTowards for AnimatedSprite target=',targetx asString,',',targety asString,' sprite board=',(anotherSprite boardx asString),',',(anotherSprite boardy asString),' isMoving=',isMoving asString;cr.
		].
	^ isMoving