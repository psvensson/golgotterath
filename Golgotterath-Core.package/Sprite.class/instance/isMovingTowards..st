accesing
isMovingTowards: anotherSprite
	| isMoving |
	isMoving := false.
	(((self isKindOf: AnimatedSprite) and: (self isMoving)) and: (self  isNotNil) ) ifTrue: [	
			| foo |
			foo := (anotherSprite boardpos y) + 1.
			isMoving :=( self target y = foo) .
		Transcript show: 'isMovingTowards for AnimatedSprite target=',
		target asString,',',' sprite board=',(anotherSprite boardpos asString),',',(anotherSprite boardpos y asString),' isMoving=',isMoving asString;cr.
		].
	^ isMoving