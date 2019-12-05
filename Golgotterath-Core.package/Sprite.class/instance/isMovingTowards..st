accesing
isMovingTowards: anotherSprite
	| isMoving |
	isMoving := false.
	(((self isKindOf: AnimatedSprite) and: (self isMoving)) and: (self  isNotNil) ) ifTrue: [	
			| foo |
			foo := (anotherSprite boardPosition y) + 1.
			isMoving :=( self target y = foo) .
		Transcript show: 'isMovingTowards for AnimatedSprite target=',
		target asString,',',' sprite board=',(anotherSprite boardPosition asString),',',(anotherSprite boardPosition y asString),' isMoving=',isMoving asString;cr.
		].
	^ isMoving