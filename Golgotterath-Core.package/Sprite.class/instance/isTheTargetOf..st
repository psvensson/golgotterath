testing
isTheTargetOf: anotherSprite
	| isMoving tx ty |
	isMoving := false.
	tx := anotherSprite target x.
	ty := anotherSprite target y.
	anotherSprite isAnimated and: [ 
		anotherSprite isMoving and: [ ty ifNotNil: [	
			| foo bar |
			foo := (self boardPosition y) + 1.
			bar := (self boardPosition x) + 1.
			isMoving :=( ty = foo) and: (tx = bar).
		]]].
	^ isMoving