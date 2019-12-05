testing
isTheTargetOf: anotherSprite
	| isMoving tx ty |
	isMoving := false.
	tx := anotherSprite target x.
	ty := anotherSprite target y.
	(((anotherSprite isKindOf: AnimatedSprite) and: 
		(anotherSprite  isMoving)) and: 
		(ty isNotNil) ) ifTrue: [	
			| foo bar |
			foo := (self boardPosition y) + 1.
			bar := (self boardPosition x) + 1.
			isMoving :=( ty = foo) and: (tx = bar).
		].
	^ isMoving