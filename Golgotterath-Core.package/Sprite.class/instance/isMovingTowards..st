testing
isMovingTowards: anotherSprite
	| isMoving |
	isMoving := false.
	(((self isKindOf: AnimatedSprite) and: (self isMoving)) and: (self  isNotNil) ) ifTrue: [	
			| foo |
			foo := (anotherSprite boardPosition y) + 1.
			isMoving :=( self target y = foo) .
		].
	^ isMoving